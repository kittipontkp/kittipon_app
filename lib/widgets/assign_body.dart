// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:kittipon_app/cores/app_constant.dart';

import 'package:kittipon_app/cores/app_service.dart';
import 'package:kittipon_app/models/assign_code_model.dart';
import 'package:kittipon_app/models/user_model.dart';
import 'package:kittipon_app/states/detail_assign_code.dart';
import 'package:kittipon_app/widgets/button_widget.dart';

class AssignBody extends StatelessWidget {
  const AssignBody({Key? key, required this.userModel}) : super(key: key);

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AppService().findListAssignCodeModel(userModel: userModel),
      builder: (context, asyncSnapshot) {
        if (asyncSnapshot.hasData) {
          List<AssignCodeModel> assignCodeModels = asyncSnapshot.data!;

          if (assignCodeModels.isEmpty) {
            return Text('ไม่มีข้อมุล');
          } else {
            return ListView.builder(
              itemCount: assignCodeModels.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.grey.shade300),
                      child: Text(
                        assignCodeModels[index].AssignCode,
                        style: AppConstant.h3Style(fontWeight: FontWeight.bold),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('AssignArea :'),
                        Text(assignCodeModels[index].AreaName),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Province :'),
                        Text(assignCodeModels[index].ProvinceName),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('District :'),
                        Text(assignCodeModels[index].DistrictName),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('SubDistrict :'),
                        Text(assignCodeModels[index].SubDistrictName),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonWidget(
                          onPressed: () {


                            Get.to(DetailAssignCode(assignCode: assignCodeModels[index].AssignCode));
                          },
                          text: 'More Detail',
                          type: GFButtonType.outline,
                        ),
                      ],
                    ),

                    Divider(),
                  ],
                ),
              ),
            );
          }
        } else {
          return SizedBox();
        }
      },
    );
  }
}
