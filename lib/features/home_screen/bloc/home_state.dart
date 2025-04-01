part of 'home_bloc.dart';

enum LogOutStatus { initial, loading, success, failure }

sealed class HomeState {}

final class HomeInitial extends HomeState {}

// @freezed
// class HomeState with _$HomeState {
//   const factory HomeState({
//     @Default(LogOutStatus.initial) LogOutStatus status,
//   }) = _HomeState;
// }
