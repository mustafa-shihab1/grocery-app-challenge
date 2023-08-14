import 'package:challenges/core/resources/manager_colors.dart';
import 'package:flutter/material.dart';

class MainTextField extends StatelessWidget {
  final bool? obSecureText;
  final String? prefix;
  final String? hintText;
  final String? Function(String?)? validator;
  final String? sufix;
  final TextInputType? inputType;
  final TextEditingController?  controller;

  const MainTextField({
    this.obSecureText,
    this.prefix,
    this.hintText,
    this.validator,
    this.sufix,
    this.inputType,
    this.controller,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obSecureText!,
      validator: validator,
      keyboardType:inputType,
      decoration: InputDecoration(
        prefixIcon: Image.asset(prefix!),
        suffixIcon: sufix != null ?Image.asset(sufix!):const SizedBox(),
        hintText: hintText!,
        hintStyle: const TextStyle(color: ManagerColors.greyColor),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
      ),
    );
  }
}
