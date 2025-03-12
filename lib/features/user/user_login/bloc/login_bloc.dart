import 'package:bloc/bloc.dart';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginSubmitted>((event, emit) async {
      emit(state.copyWith(status: LoginStatus.loading));
      try {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final String? userDataJson = prefs.getString('userData');

        if (userDataJson != null) {
          final Map<String, dynamic> userData = jsonDecode(userDataJson);

          if (userData['email'] == event.email &&
              userData['password'] == event.password) {
            await prefs.setBool('isLoggedIn', true);
            await prefs.setString('accountId', userData['email']);
            await prefs.setString('username', userData['firstName']);
            await prefs.setString('surname', userData['lastName']);

            emit(state.copyWith(status: LoginStatus.success));
          } else {
            emit(state.copyWith(status: LoginStatus.failure, error: "failure"));
          }
        }
      } catch (e) {
        emit(state.copyWith(status: LoginStatus.failure, error: "$e"));
      }
    });
  }
}
