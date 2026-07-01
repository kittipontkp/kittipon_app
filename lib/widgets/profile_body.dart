// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kittipon_app/cores/app_constant.dart';

import 'package:kittipon_app/models/user_model.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key? key,
    required this.userModel,
  }) : super(key: key);

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Full Name :', style: AppConstant.h3Style(),),
            Text(userModel.Fullname, style: AppConstant.h3Style(),),
          ],
        ),
        Row(
          children: [
            Text('User Type :', style: AppConstant.h3Style(),),
            Text(userModel.UserType, style: AppConstant.h3Style(),),
          ],
        ),
        Row(
          children: [
            Text('User Type Name :', style: AppConstant.h3Style(),),
            Text(userModel.UserTypeName, style: AppConstant.h3Style(),),
          ],
        ),
      ],
    );
  }
}
