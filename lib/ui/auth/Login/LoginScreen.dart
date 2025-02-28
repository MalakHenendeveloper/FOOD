import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/Resources/Dialog.dart';
import 'package:food/core/Routes/AppRoutes.dart';
import 'package:food/core/injectable/injectable.dart';
import 'package:food/ui/auth/Login/Cubit/LoginStatr.dart';
import 'package:food/ui/auth/Login/Cubit/LoginViewmodel.dart';
import 'package:food/ui/auth/Login/widgets/ButtonSections.dart';
import 'package:food/ui/auth/Login/widgets/CustomTextField.dart';
import 'package:food/ui/auth/Login/widgets/Donthaveaccount.dart';
import 'package:food/ui/auth/Login/widgets/Forgetpassword.dart';
import 'package:food/ui/auth/Login/widgets/Headersection.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});
  final viewmodel = getIt<Loginviewmodel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Headersection(),
          BlocListener<Loginviewmodel, LoginState>(
            bloc: viewmodel,
            listener: (context, state) {
              if (state is LoginLoading) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Loading')));
              } else if (state is LoginError) {
                CustomDialog.show(
                  context,
                  dialogType: DialogType.error,
                  title: 'Error , LogIn',
                  description: state.fauilers.errorMassage,
                  onOkPress: () {},
                );
              } else if (state is LoginSuccess) {
                CustomDialog.show(
                  context,
                  dialogType: DialogType.success,
                  title: 'successfully',
                  description: "success , LogIn",
                  onOkPress: () {
                    Navigator.pushReplacementNamed(context, Approutes.main);
                  },
                );
              }
            },
            child: Container(
              height: 550.h,
              width: double.infinity,
              margin: EdgeInsets.only(top: 290.h, left: 25.w, right: 25.w),
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.r),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 0.8,
                    )
                  ]),
              child: Column(
                spacing: 10.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          fontSize: 25.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 25.sp, fontWeight: FontWeight.bold),
                  ),
                  Customtextfield(
                    hintText: 'Enter Your Email',
                    icon: Icons.mail,
                    controller: viewmodel.email,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 25.sp, fontWeight: FontWeight.bold),
                  ),
                  Customtextfield(
                    hintText: 'Enter Your Password',
                    icon: Icons.password,
                    controller: viewmodel.password,
                  ),
                  Forgetpassword(),
                  Buttonsections(ontap: viewmodel.login),
                  Donthaveaccount()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
