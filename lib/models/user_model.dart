import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {

  final String Username;
  final String Fullname;
  final String UserType;
  final String UserTypeName;
  final String ProvCode;
  final List<String> AssignCodes;
  UserModel({
    required this.Username,
    required this.Fullname,
    required this.UserType,
    required this.UserTypeName,
    required this.ProvCode,
    required this.AssignCodes,
  });
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Username': Username,
      'Fullname': Fullname,
      'UserType': UserType,
      'UserTypeName': UserTypeName,
      'ProvCode': ProvCode,
      'AssignCodes': AssignCodes,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      Username: (map['Username'] ?? '') as String,
      Fullname: (map['Fullname'] ?? '') as String,
      UserType: (map['UserType'] ?? '') as String,
      UserTypeName: (map['UserTypeName'] ?? '') as String,
      ProvCode: (map['ProvCode'] ?? '') as String,
      AssignCodes: List<String>.from(map['AssignCodes'] ?? []),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
