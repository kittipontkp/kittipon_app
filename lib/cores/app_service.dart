import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kittipon_app/models/assign_code_model.dart';
import 'package:kittipon_app/models/building_code_model.dart';
import 'package:kittipon_app/models/user_model.dart';
import 'package:kittipon_app/states/main_home.dart';

class AppService {
  Future<List<BuildingCodeModel>> findBuildList({
    required String assignCode,
    required String cookieHeader,
  }) async {
    List<BuildingCodeModel> buildingCodeModels = [];

    String urlAPI = 'https://tns.nso.go.th/hh70/API/building_list.php';

    dio.Dio objectDio = dio.Dio();

    var response = await objectDio.request(
      '$urlAPI?assign_code=$assignCode',
      options: dio.Options(method: 'GET', headers: {'Cookie': cookieHeader}),
    );
    // debugPrint('status ==> ${response.statusCode()}');
    debugPrint('response ==> ${response.toString()}');

    if (response.data['data'].isEmpty) {
      return [];
    } else {
      for (var element in response.data['data']) {
        BuildingCodeModel model = BuildingCodeModel.fromMap(element);
        buildingCodeModels.add(model);
      }
    }

    return buildingCodeModels;
  }

  Future<List<AssignCodeModel>> findListAssignCodeModel({
    required UserModel userModel,
  }) async {
    List<AssignCodeModel> assignCodeModels = [];

    for (var element in userModel.AssignCodes) {
      AssignCodeModel assignCodeModel = AssignCodeModel.fromMap(element);
      assignCodeModels.add(assignCodeModel);
    }

    return assignCodeModels;
  }

  Future<void> checkLogin({
    required String username,
    required String password,
    required BuildContext context,
  }) async {
    try {
      String urlAPI = 'https://tns.nso.go.th/hh70/API/v2/authenticate.php';

      Map<String, dynamic> body = {};
      body['username'] = username;
      body['password'] = password;

      dio.Dio objectDio = dio.Dio();
      objectDio.options.headers['Content-Type'] = 'multipart/form-data';

      var response = await objectDio.post(
        urlAPI,
        data: dio.FormData.fromMap(body),
      );

      final cookies = response.headers['set-cookie'];
      debugPrint('## cookie ==> $cookies');

      List<String> trueCookies = <String>[];
      for (var element in cookies!) {
        trueCookies.add(element.split(';').first);
      }
      debugPrint('## trueCookies ==> $trueCookies');

      final cookieHeader = trueCookies.join('; ');

      debugPrint('## cookieHeader ===> $cookieHeader');

      debugPrint('response ===> ${response.toString()}');

      UserModel userModel = UserModel.fromMap(response.data['data']);

      debugPrint('AssignCodes ===> ${userModel.AssignCodes}');

      Get.offAll(MainHome(userModel: userModel, cookieHeader: cookieHeader));

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Welcome ${userModel.Fullname}',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.pinkAccent,
          duration: Duration(seconds: 10),
        ),
      );
    } on Exception catch (e) {
      // TODO
      debugPrint('e ===> ${e.toString()}');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'ไม่สามารถเข้าสู่ระบบได้ กรุณาลองใหม่อีกครั้ง',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 10),
        ),
      );
    }
  }
}
