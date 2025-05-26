import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eweatlthbankingapp/core/failure/failures.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/domain/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_event.dart';

part 'beneficiary_state.dart';

part 'beneficiary_bloc.freezed.dart';

class BeneficiaryBloc extends Bloc<BeneficiaryEvent, BeneficiaryState> {
  final GetAllBeneficiariesUseCase getUseCase;

  BeneficiaryBloc({required this.getUseCase})
      : super(BeneficiaryState.initial()) {
    ///here is where we get all the users and emit them
    on<BeneficiaryEvent>((event, emit) async {});
    on<GetAllUsers>((event, emit) async {
      final useResult = await getUseCase();
      emit(state.copyWith(usersList: useResult));
    });
  }
}
