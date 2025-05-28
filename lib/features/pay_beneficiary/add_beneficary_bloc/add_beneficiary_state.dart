part of 'add_beneficiary_bloc.dart';

@freezed
class AddBeneficiaryState with _$AddBeneficiaryState {
  const factory AddBeneficiaryState({
    @Default(false) bool addingIsLoading,
    @Default(None()) Option<Either<Failure, Unit>> addingBeneficiaryFailureOrUnit,
  }) = _AddBeneficiaryState;

  factory AddBeneficiaryState.initial() => const AddBeneficiaryState();
}
