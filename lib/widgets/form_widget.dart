// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    Key? key,
    this.hint,
    this.suffixIcon,
    this.obscureText,
    this.validator,
    this.controller,
  }) : super(key: key);

  final String? hint;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(controller: controller,
      validator: validator,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hint,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
