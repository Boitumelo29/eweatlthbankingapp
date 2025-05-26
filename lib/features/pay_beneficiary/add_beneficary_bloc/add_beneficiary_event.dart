part of 'add_beneficiary_bloc.dart';

@freezed
class AddBeneficiaryEvent with _$AddBeneficiaryEvent {
  const factory AddBeneficiaryEvent.started() = _Started;
}
