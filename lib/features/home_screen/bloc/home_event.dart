part of 'home_bloc.dart';

sealed class HomeEvent {}

class Logout extends HomeEvent {}

class LoadUser extends HomeEvent {}

class LoadDeposit extends HomeEvent {}

// @freezed
// class HomeEvent with _$HomeEvent{
//  const factory HomeEvent.logout() = LogOut;
// }
