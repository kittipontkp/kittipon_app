import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BuildingCodeModel {
  final String BuildingRepKey;
  final String iden_ea;
  final String BuildingCode;
  final String AssignCode;
  final String PSU_NO;
  final String EA_NO;
  final String VillCode;
  final String VillName;
  final String EA_SET;
  final String MonthLi;
  final String ProvCode;
  final String ProvName;
  final String DistCode;
  final String DistName;
  final String SubDistCode;
  final String SubDistName;
  final String AreaCode;
  final String AreaName;
  final String TypeEA;
  final String BuildingNo;
  final String BuildingNo_New;
  final String AddressNo;
  final String Street;
  final String Alley;
  final String BuildingName;
  final String BuildingUse;
  final String BuildingType;
  final String BuildingTypeOther;
  final String BuildingHeight;
  final String TypeofBuilding;
  final String NoInhabitants;
  final String NoInhabitantsOther;
  final String Countable;
  final String EmptyRooms;
  final String HouseholdCount;
  final String TotalRooms;
  final String SurveyStatus;
  final String UseMap;
  final String Remark;
  final String InterviewerCode;
  final String InterviewerName;
  final String SupervisorCode;
  final String SupervisorName;
  final String CreateByCode;
  final String CreateByName;
  final String CreateByDate;
  final String UpdateByCode;
  final String UpdateByName;
  final String UpdateByDate;
  final String IsActive;
  BuildingCodeModel({
    required this.BuildingRepKey,
    required this.iden_ea,
    required this.BuildingCode,
    required this.AssignCode,
    required this.PSU_NO,
    required this.EA_NO,
    required this.VillCode,
    required this.VillName,
    required this.EA_SET,
    required this.MonthLi,
    required this.ProvCode,
    required this.ProvName,
    required this.DistCode,
    required this.DistName,
    required this.SubDistCode,
    required this.SubDistName,
    required this.AreaCode,
    required this.AreaName,
    required this.TypeEA,
    required this.BuildingNo,
    required this.BuildingNo_New,
    required this.AddressNo,
    required this.Street,
    required this.Alley,
    required this.BuildingName,
    required this.BuildingUse,
    required this.BuildingType,
    required this.BuildingTypeOther,
    required this.BuildingHeight,
    required this.TypeofBuilding,
    required this.NoInhabitants,
    required this.NoInhabitantsOther,
    required this.Countable,
    required this.EmptyRooms,
    required this.HouseholdCount,
    required this.TotalRooms,
    required this.SurveyStatus,
    required this.UseMap,
    required this.Remark,
    required this.InterviewerCode,
    required this.InterviewerName,
    required this.SupervisorCode,
    required this.SupervisorName,
    required this.CreateByCode,
    required this.CreateByName,
    required this.CreateByDate,
    required this.UpdateByCode,
    required this.UpdateByName,
    required this.UpdateByDate,
    required this.IsActive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'BuildingRepKey': BuildingRepKey,
      'iden_ea': iden_ea,
      'BuildingCode': BuildingCode,
      'AssignCode': AssignCode,
      'PSU_NO': PSU_NO,
      'EA_NO': EA_NO,
      'VillCode': VillCode,
      'VillName': VillName,
      'EA_SET': EA_SET,
      'MonthLi': MonthLi,
      'ProvCode': ProvCode,
      'ProvName': ProvName,
      'DistCode': DistCode,
      'DistName': DistName,
      'SubDistCode': SubDistCode,
      'SubDistName': SubDistName,
      'AreaCode': AreaCode,
      'AreaName': AreaName,
      'TypeEA': TypeEA,
      'BuildingNo': BuildingNo,
      'BuildingNo_New': BuildingNo_New,
      'AddressNo': AddressNo,
      'Street': Street,
      'Alley': Alley,
      'BuildingName': BuildingName,
      'BuildingUse': BuildingUse,
      'BuildingType': BuildingType,
      'BuildingTypeOther': BuildingTypeOther,
      'BuildingHeight': BuildingHeight,
      'TypeofBuilding': TypeofBuilding,
      'NoInhabitants': NoInhabitants,
      'NoInhabitantsOther': NoInhabitantsOther,
      'Countable': Countable,
      'EmptyRooms': EmptyRooms,
      'HouseholdCount': HouseholdCount,
      'TotalRooms': TotalRooms,
      'SurveyStatus': SurveyStatus,
      'UseMap': UseMap,
      'Remark': Remark,
      'InterviewerCode': InterviewerCode,
      'InterviewerName': InterviewerName,
      'SupervisorCode': SupervisorCode,
      'SupervisorName': SupervisorName,
      'CreateByCode': CreateByCode,
      'CreateByName': CreateByName,
      'CreateByDate': CreateByDate,
      'UpdateByCode': UpdateByCode,
      'UpdateByName': UpdateByName,
      'UpdateByDate': UpdateByDate,
      'IsActive': IsActive,
    };
  }

  factory BuildingCodeModel.fromMap(Map<String, dynamic> map) {
    return BuildingCodeModel(
      BuildingRepKey: (map['BuildingRepKey'] ?? '') as String,
      iden_ea: (map['iden_ea'] ?? '') as String,
      BuildingCode: (map['BuildingCode'] ?? '') as String,
      AssignCode: (map['AssignCode'] ?? '') as String,
      PSU_NO: (map['PSU_NO'] ?? '') as String,
      EA_NO: (map['EA_NO'] ?? '') as String,
      VillCode: (map['VillCode'] ?? '') as String,
      VillName: (map['VillName'] ?? '') as String,
      EA_SET: (map['EA_SET'] ?? '') as String,
      MonthLi: (map['MonthLi'] ?? '') as String,
      ProvCode: (map['ProvCode'] ?? '') as String,
      ProvName: (map['ProvName'] ?? '') as String,
      DistCode: (map['DistCode'] ?? '') as String,
      DistName: (map['DistName'] ?? '') as String,
      SubDistCode: (map['SubDistCode'] ?? '') as String,
      SubDistName: (map['SubDistName'] ?? '') as String,
      AreaCode: (map['AreaCode'] ?? '') as String,
      AreaName: (map['AreaName'] ?? '') as String,
      TypeEA: (map['TypeEA'] ?? '') as String,
      BuildingNo: (map['BuildingNo'] ?? '') as String,
      BuildingNo_New: (map['BuildingNo_New'] ?? '') as String,
      AddressNo: (map['AddressNo'] ?? '') as String,
      Street: (map['Street'] ?? '') as String,
      Alley: (map['Alley'] ?? '') as String,
      BuildingName: (map['BuildingName'] ?? '') as String,
      BuildingUse: (map['BuildingUse'] ?? '') as String,
      BuildingType: (map['BuildingType'] ?? '') as String,
      BuildingTypeOther: (map['BuildingTypeOther'] ?? '') as String,
      BuildingHeight: (map['BuildingHeight'] ?? '') as String,
      TypeofBuilding: (map['TypeofBuilding'] ?? '') as String,
      NoInhabitants: (map['NoInhabitants'] ?? '') as String,
      NoInhabitantsOther: (map['NoInhabitantsOther'] ?? '') as String,
      Countable: (map['Countable'] ?? '') as String,
      EmptyRooms: (map['EmptyRooms'] ?? '') as String,
      HouseholdCount: (map['HouseholdCount'] ?? '') as String,
      TotalRooms: (map['TotalRooms'] ?? '') as String,
      SurveyStatus: (map['SurveyStatus'] ?? '') as String,
      UseMap: (map['UseMap'] ?? '') as String,
      Remark: (map['Remark'] ?? '') as String,
      InterviewerCode: (map['InterviewerCode'] ?? '') as String,
      InterviewerName: (map['InterviewerName'] ?? '') as String,
      SupervisorCode: (map['SupervisorCode'] ?? '') as String,
      SupervisorName: (map['SupervisorName'] ?? '') as String,
      CreateByCode: (map['CreateByCode'] ?? '') as String,
      CreateByName: (map['CreateByName'] ?? '') as String,
      CreateByDate: (map['CreateByDate'] ?? '') as String,
      UpdateByCode: (map['UpdateByCode'] ?? '') as String,
      UpdateByName: (map['UpdateByName'] ?? '') as String,
      UpdateByDate: (map['UpdateByDate'] ?? '') as String,
      IsActive: (map['IsActive'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BuildingCodeModel.fromJson(String source) =>
      BuildingCodeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
