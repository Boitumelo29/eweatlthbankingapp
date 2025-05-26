part of 'beneficiary_bloc.dart';

@freezed
class BeneficiaryState with _$BeneficiaryState {
  factory BeneficiaryState.initial() => const BeneficiaryState();

  const factory BeneficiaryState({
    @Default(false) bool fetchingList,
    @Default([]) List usersList,
    @Default(None())
    Option<Either<Failure, Unit>> fetchingBeneficiaryFailureOrUnit,
  }) = _BeneficiaryState;
}
