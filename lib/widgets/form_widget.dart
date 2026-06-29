// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({Key? key, this.hint, this.suffixIcon}) : super(key: key);

  final String? hint;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hint,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
