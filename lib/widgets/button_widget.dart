// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    this.type,
  }) : super(key: key);

  final Function() onPressed;
  final String text;
  final GFButtonType? type;

  @override
  Widget build(BuildContext context) {
    return GFButton(onPressed: onPressed, text: text, type: type ?? GFButtonType.solid);
  }
}
