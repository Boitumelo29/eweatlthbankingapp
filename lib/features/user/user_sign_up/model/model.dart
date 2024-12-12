class RegisterModel {
  final String firstName;
  final String lastName;
  final String cellNumber;
  final String email;
  final String province;
  final String suburb;
  final String city;
  final String streetNumber;
  final String streetName;
  final String idNumber;
  final String dateOfBirth;
  final String password;

  RegisterModel({
    required this.firstName,
    required this.lastName,
    required this.cellNumber,
    required this.email,
    required this.province,
    required this.suburb,
    required this.city,
    required this.streetNumber,
    required this.streetName,
    required this.idNumber,
    required this.dateOfBirth,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'cellNumber': cellNumber,
      'email': email,
      'province': province,
      'suburb': suburb,
      'city': city,
      'streetNumber': streetNumber,
      'streetName': streetName,
      'idNumber': idNumber,
      'dateOfBirth': dateOfBirth,
      'password': password,
    };
  }
}
