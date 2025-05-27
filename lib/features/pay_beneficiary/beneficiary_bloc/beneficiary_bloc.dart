import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eweatlthbankingapp/core/failure/failures.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/domain/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_event.dart';

part 'beneficiary_state.dart';

part 'beneficiary_bloc.freezed.dart';

class BeneficiaryBloc extends Bloc<BeneficiaryEvent, BeneficiaryState> {
  final BeneficiaryRepository beneficiaryRepository;

  BeneficiaryBloc({required this.beneficiaryRepository})
      : super(BeneficiaryState.initial()) {
    ///here is where we get all the users and emit them
    on<BeneficiaryEvent>((event, emit) async {});
    on<GetAllUsers>((event, emit) async {
      final useResult = await beneficiaryRepository.getAllBeneficiaries();
      emit(state.copyWith(usersList: useResult));
    });
  }
}
