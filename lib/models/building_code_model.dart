import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BuildingCodeModel {
  final String AssignCode;
  final String ProName;
  final String DisName;
  final String SubDistName;
  final String AreaName;
  final String EA_NO;
  final String PSU_NO;
  final String BuildingRepKey;
  final String iden_ea;
  final String BuildingCode;
  BuildingCodeModel({
    required this.AssignCode,
    required this.ProName,
    required this.DisName,
    required this.SubDistName,
    required this.AreaName,
    required this.EA_NO,
    required this.PSU_NO,
    required this.BuildingRepKey,
    required this.iden_ea,
    required this.BuildingCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'AssignCode': AssignCode,
      'ProName': ProName,
      'DisName': DisName,
      'SubDistName': SubDistName,
      'AreaName': AreaName,
      'EA_NO': EA_NO,
      'PSU_NO': PSU_NO,
      'BuildingRepKey': BuildingRepKey,
      'iden_ea': iden_ea,
      'BuildingCode': BuildingCode,
    };
  }

  factory BuildingCodeModel.fromMap(Map<String, dynamic> map) {
    return BuildingCodeModel(
      AssignCode: (map['AssignCode'] ?? '') as String,
      ProName: (map['ProName'] ?? '') as String,
      DisName: (map['DisName'] ?? '') as String,
      SubDistName: (map['SubDistName'] ?? '') as String,
      AreaName: (map['AreaName'] ?? '') as String,
      EA_NO: (map['EA_NO'] ?? '') as String,
      PSU_NO: (map['PSU_NO'] ?? '') as String,
      BuildingRepKey: (map['BuildingRepKey'] ?? '') as String,
      iden_ea: (map['iden_ea'] ?? '') as String,
      BuildingCode: (map['BuildingCode'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BuildingCodeModel.fromJson(String source) => BuildingCodeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
