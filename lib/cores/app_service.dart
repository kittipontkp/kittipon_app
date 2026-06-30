import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kittipon_app/models/user_model.dart';

class AppService {
  Future<void> checkLogin({
    required String username,
    required String password,
    required BuildContext context,
  }) async {
    try {
      String urlAPI = 'https://tns.nso.go.th/hh70/API/authenticate.php';

      Map<String, dynamic> body = {};
      body['username'] = username;
      body['password'] = password;

      Dio objectDio = Dio();
      objectDio.options.headers['Content-Type'] = 'multipart/form-data';

      var response = await objectDio.post(urlAPI, data: FormData.fromMap(body));

      debugPrint('response ===> ${response.toString()}');

      UserModel userModel = UserModel.fromMap(response.data['data']);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Welcome ${userModel.Fullname}',
            style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.pinkAccent,
          duration: Duration(seconds: 10),
        ),
      );
    } on Exception catch (e) {
      // TODO
      debugPrint('e ===> ${e.toString()}');
    }
  }
}
