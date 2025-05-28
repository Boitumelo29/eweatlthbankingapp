import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eweatlthbankingapp/core/failure/failures.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/domain/repo.dart';
import 'package:eweatlthbankingapp/features/pay_beneficiary/domain/reponse_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_beneficiary_event.dart';

part 'add_beneficiary_state.dart';

part 'add_beneficiary_bloc.freezed.dart';

class AddBeneficiaryBloc
    extends Bloc<AddBeneficiaryEvent, AddBeneficiaryState> {
  final BeneficiaryRepository beneficiaryRepository;

  AddBeneficiaryBloc({required this.beneficiaryRepository})
      : super(AddBeneficiaryState.initial()) {
    on<AddBeneficiaryEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<AddNewBeneficiary>((event, emit) async {
      emit(state.copyWith(
          addingIsLoading: true, addingBeneficiaryFailureOrUnit: const None()));

      try {
        final beneficiary = Beneficiary(
          accountName: event.accountName,
          accountNumber: event.accountNumber,
          bank: event.bank,
        );
        await beneficiaryRepository.addBeneficiary(beneficiary);

        emit(state.copyWith(
            addingIsLoading: false,
            addingBeneficiaryFailureOrUnit: some(right(unit))));
      } catch (e) {
        print(e);
        emit(state.copyWith(
            addingIsLoading: false,
            addingBeneficiaryFailureOrUnit:
                some(left(const Failure(message: "failure")))));
      }
    });
  }
}
