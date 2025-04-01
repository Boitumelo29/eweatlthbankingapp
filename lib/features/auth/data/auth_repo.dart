import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  static const String _userEmailKey = 'user_email';

  Future<void> saveUserEmail(String email) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userEmailKey, email);
  }

  ///todo we need to figure out how to load the userData
  Future<void> loadUserData(String username, String accountNumber) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userDataJson = prefs.getString('userData');

      if (userDataJson != null) {
        final userData = jsonDecode(userDataJson);
        username = '${userData['firstName']} ${userData['lastName']}';
        accountNumber = userData['email'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<String?> getUserEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userEmailKey);
  }

  Future<void> logout() async {
    // final prefs = await SharedPreferences.getInstance();
    // await prefs.remove(_userEmailKey);

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('isLoggedIn');
    await prefs.remove('accountId');
    await prefs.remove('username');
    await prefs.remove('surname');
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(_userEmailKey);
  }

  String getUserAccount(String userName, String accountNumb) {
    SharedPreferences.getInstance().then((prefs) {
      final accountId = prefs.getString('accountId') ?? '';
      if (accountId.isNotEmpty) {
        return fetchUserDetails(accountId, userName, accountNumb);
      } else {
        print("error");
      }
    });
    return "Unknown User";
  }

  Future<void> fetchUserDetails(
      String accountId, String userName, String accountNumber) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userDataJson = prefs.getString('userData');

      if (userDataJson != null) {
        final userData = jsonDecode(userDataJson);

        userName = '${userData['firstName']} ${userData['lastName']}';
        accountNumber = userData['email'];
      } else {
        print("error");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<bool> loginUser(String email, String password) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userDataJson = prefs.getString('userData');

      if (userDataJson != null) {
        final Map<String, dynamic> userData = jsonDecode(userDataJson);

        if (userData['email'] == email && userData['password'] == password) {
          await prefs.setBool('isLoggedIn', true);
          await prefs.setString('accountId', userData['email']);
          await prefs.setString('username', userData['firstName']);
          await prefs.setString('surname', userData['lastName']);
        }
        return true;
      } else {
        print("error");
      }
    } catch (e) {
      print(e);
      return false;
    }
    return false;
  }
}
