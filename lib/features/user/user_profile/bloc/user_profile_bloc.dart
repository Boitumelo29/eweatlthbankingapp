import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eweatlthbankingapp/core/failure/failures.dart';
import 'package:eweatlthbankingapp/features/auth/data/auth_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_event.dart';

part 'user_profile_state.dart';

part 'user_profile_bloc.freezed.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final AuthRepository authRepo;

  UserProfileBloc({required this.authRepo})
      : super(UserProfileState.initial()) {
    on<UserProfileEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<LoadUser>((event, emit) async {
      final userData = await authRepo.loadUserData();

      if (userData != null) {
        emit(state.copyWith(
          userName: userData['userName'] ?? "unknown user",
          accountNumber: userData['accountNumber'] ?? "unknown account",
            cellNumber: userData["cellNumber"] ?? "unknownCellNumber",
            id: userData["idNumber"] ?? "unknownID"

        ));
      } else {
        emit(state.copyWith(
          userName: "unknown user",
          accountNumber: "unknown account",
        ));
      }
    });
  }
}
