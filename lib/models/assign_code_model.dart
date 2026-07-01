import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AssignCodeModel {

  final String AssignCode;
  final String ProvinceName;
  final String DistrictName;
  final String SubDistrictName;
  final String AreaName;
  final String EA_NO;
  final String PSU_NO;
  AssignCodeModel({
    required this.AssignCode,
    required this.ProvinceName,
    required this.DistrictName,
    required this.SubDistrictName,
    required this.AreaName,
    required this.EA_NO,
    required this.PSU_NO,
  });



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'AssignCode': AssignCode,
      'ProvinceName': ProvinceName,
      'DistrictName': DistrictName,
      'SubDistrictName': SubDistrictName,
      'AreaName': AreaName,
      'EA_NO': EA_NO,
      'PSU_NO': PSU_NO,
    };
  }

  factory AssignCodeModel.fromMap(Map<String, dynamic> map) {
    return AssignCodeModel(
      AssignCode: (map['AssignCode'] ?? '') as String,
      ProvinceName: (map['ProvinceName'] ?? '') as String,
      DistrictName: (map['DistrictName'] ?? '') as String,
      SubDistrictName: (map['SubDistrictName'] ?? '') as String,
      AreaName: (map['AreaName'] ?? '') as String,
      EA_NO: (map['EA_NO'] ?? '') as String,
      PSU_NO: (map['PSU_NO'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AssignCodeModel.fromJson(String source) => AssignCodeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
