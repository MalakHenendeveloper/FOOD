import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class CustomDialog {
  static void show(
      BuildContext context, {
        required DialogType dialogType,
        required String title,
        required String description,
        VoidCallback? onOkPress,
        VoidCallback? onCancelPress,
      }) {
    AwesomeDialog(
      context: context,
      dialogType: dialogType,
      animType: AnimType.rightSlide,
      title: title,
      desc: description,
      btnOkOnPress: onOkPress ?? () {},
      btnCancelOnPress: onCancelPress ?? () {},
    ).show();
  }
}
