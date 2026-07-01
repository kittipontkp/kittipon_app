import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kittipon_app/cores/app_http_override.dart';
import 'package:kittipon_app/states/login_page.dart';

Future<void> main() async {

HttpOverrides.global = AppHttpOverride();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: LoginPage(),);
  }
}