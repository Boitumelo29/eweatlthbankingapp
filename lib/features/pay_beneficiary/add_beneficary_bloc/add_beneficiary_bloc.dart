import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_beneficiary_event.dart';
part 'add_beneficiary_state.dart';
part 'add_beneficiary_bloc.freezed.dart';

class AddBeneficiaryBloc extends Bloc<AddBeneficiaryEvent, AddBeneficiaryState> {
  AddBeneficiaryBloc() : super(const AddBeneficiaryState.initial()) {
    on<AddBeneficiaryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
