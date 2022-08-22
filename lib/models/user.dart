import 'dart:convert';

class User {
  final String email;
  final String id;
  final String firstName;
  final String lastName;
  final int phoneNumber;
  final String street;
  final String streetNumber;
  final String postCode;
  final String city;

  User(this.id, this.firstName, this.lastName, this.phoneNumber, this.street,
      this.streetNumber, this.postCode, this.city, this.email);

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'email': email});
    result.addAll({'id': id});
    result.addAll({'firstName': firstName});
    result.addAll({'lastName': lastName});
    result.addAll({'phoneNumber': phoneNumber});
    result.addAll({'street': street});
    result.addAll({'streetNumber': streetNumber});
    result.addAll({'postCode': postCode});
    result.addAll({'city': city});

    return result;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      map['email'] ?? '',
      map['id'] ?? '',
      map['firstName'] ?? '',
      map['lastName'] ?? '',
      map['phoneNumber']?.toInt() ?? 0,
      map['street'] ?? '',
      map['streetNumber'] ?? '',
      map['postCode'] ?? '',
      map['city'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
