import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eweatlthbankingapp/core/failure/failures.dart';
import 'package:eweatlthbankingapp/core/shared/image_repo.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';

part 'user_profile_event.dart';

part 'user_profile_state.dart';

part 'user_profile_bloc.freezed.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final AuthRepository authRepo;
  final ImageRepository imageRepository;

  UserProfileBloc({required this.authRepo, required this.imageRepository})
      : super(UserProfileState.initial()) {
    on<LoadUserProfile>((event, emit) async {
      final userData = await authRepo.loadUserData();

      if (userData != null) {
        emit(state.copyWith(
            userName: userData['userName'] ?? "unknown user",
            accountNumber: userData['accountNumber'] ?? "unknown account",
            cellNumber: userData["cellNumber"] ?? "unknownCellNumber",
            id: userData["idNumber"] ?? "unknownID"));
      } else {
        emit(state.copyWith(
          userName: "unknown user",
          accountNumber: "unknown account",
        ));
      }
    });

    on<GetUserImage>((event, emit) {
      try {
        imageRepository.getUserImage(event.img, event.accountId);
      } catch (e) {
        print("we have an error");
      }
    });
    on<FetchUserImage>((event, emit) async {
      try {
        final imageEither = await imageRepository.fetchUserImage(state.id);

        imageEither.fold(
          (failure) => print("Failed to fetch image: $failure"),
          (imageBytes) {
            final base64String = base64Encode(imageBytes);
            emit(state.copyWith(userImage: base64String));
          },
        );
      } catch (e) {
        print("we have an error: $e");
      }
    });
  }
}
