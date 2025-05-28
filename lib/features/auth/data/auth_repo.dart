import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:eweatlthbankingapp/core/failure/failures.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  static const String _userEmailKey = 'user_email';
  static const String _isLoggedInKey = 'isLoggedIn';

  Future<void> saveUserEmail(String email) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userEmailKey, email);
    await prefs.setBool(_isLoggedInKey, true);
  }

  Future<Map<String, String>?> loadUserData() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userDataJson = prefs.getString('userData');

      if (userDataJson != null) {
        final userData = jsonDecode(userDataJson);

        final username = '${userData['firstName']} ${userData['lastName']}';
        final accountNumber = userData['email'];

        return {
          'userName': username,
          'accountNumber': accountNumber,
        };
      }

      return null;
    } catch (e) {
      print("Error loading user data: $e");
      return null;
    }
  }

  Future<String?> getUserEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userEmailKey);
  }

  Future<Either<Failure, Unit>> logout() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_userEmailKey);
      await prefs.remove(_isLoggedInKey);
      await prefs.remove('accountId');
      await prefs.remove('username');
      await prefs.remove('surname');

      return right(unit);
    } catch (e) {
      return left(Failure(message: "$e"));
    }
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_isLoggedInKey) ?? false;
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
          await saveUserEmail(email); // Save email and set logged in state
          await prefs.setString('accountId', userData['email']);
          await prefs.setString('username', userData['firstName']);
          await prefs.setString('surname', userData['lastName']);
          return true;
        }
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<Either<Failure, Unit>> signup({
    required String username,
    required String lastname,
    required String password,
    required String email,
    required String cellphone,
    required String selectedProvince,
    required String sub,
    required String city,
    required String streetNum,
    required String streetName,
    required String idNum,
    required String dob,
  }) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final accountId = email;
      await prefs.setBool(_isLoggedInKey, true);
      await prefs.setString('accountId', accountId);
      await prefs.setString('username', username);
      await prefs.setString('surname', lastname);
      await prefs.setString(_userEmailKey, email);

      final userData = {
        'firstName': username,
        'lastName': lastname,
        'cellNumber': cellphone,
        'email': email,
        'province': selectedProvince,
        'suburb': sub,
        'city': city,
        'streetNumber': streetNum,
        'streetName': streetName,
        'idNumber': idNum,
        'dateOfBirth': dob,
        'password': password,
      };

      await prefs.setString('userData', jsonEncode(userData));

      return right(unit);
    } catch (e) {
      return left(const Failure(message: 'error'));
    }
  }
}
