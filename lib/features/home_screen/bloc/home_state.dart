part of 'home_bloc.dart';

enum LogOutStatus { initial, loading, success, failure }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int depositAmount,
    String? userName,
    String? accountNumber,
    ///todo tumi if I want to print the list in a reversed list I need to replace type dynamic with type: Iterable<Map<String, Object>>
    required List<Map<String, dynamic>> transactions,
    @Default(None()) Option<Either<Failure, Unit>> logoutFailureFailureOrUnit,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
    depositAmount: 0,
    transactions: [],
    logoutFailureFailureOrUnit: none(),
  );
}
