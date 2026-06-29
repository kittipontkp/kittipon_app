import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kittipon_app/cores/app_constant.dart';
import 'package:kittipon_app/widgets/form_widget.dart';
import 'package:kittipon_app/widgets/image_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 80),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: Get.width * 0.8, child: ImageWidget()),
                  ],
                ),
            
                SizedBox(height: 16),
            
                Text(AppConstant.appName, style: AppConstant.h2Style()),
            
                SizedBox(height: 16),

                Container(margin: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      FormWidget(hint: 'Username',suffixIcon: Icon(Icons.person_outline),),
                      SizedBox(height: 16),
                                  
                      FormWidget(hint: 'Password',suffixIcon: Icon(Icons.lock),),
                    ],
                  ),
                ),
                
                Text('button login'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
