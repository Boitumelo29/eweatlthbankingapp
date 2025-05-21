import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_event.dart';
part 'beneficiary_state.dart';
part 'beneficiary_bloc.freezed.dart';

class BeneficiaryBloc extends Bloc<BeneficiaryEvent, BeneficiaryState> {
  BeneficiaryBloc() : super(const BeneficiaryState.initial()) {
    on<BeneficiaryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
