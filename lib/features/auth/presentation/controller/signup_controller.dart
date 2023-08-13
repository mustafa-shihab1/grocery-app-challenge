import 'package:challenges/core/resources/manager_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  late TextEditingController email = TextEditingController();
  late TextEditingController password = TextEditingController();
  late TextEditingController phone = TextEditingController();
  var formKey = GlobalKey<FormState>();

}