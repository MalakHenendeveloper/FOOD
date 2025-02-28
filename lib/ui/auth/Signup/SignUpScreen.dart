import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/Resources/AppImages.dart';
import 'package:food/core/Resources/Dialog.dart';
import 'package:food/core/Routes/AppRoutes.dart';
import 'package:food/core/injectable/injectable.dart';
import 'package:food/ui/auth/Signup/Cubit/SignUpState.dart';
import 'package:food/ui/auth/Signup/Cubit/SignUpViewmodel.dart';
import 'package:food/ui/auth/Signup/widgets/Alreadyhaveaccount.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  var viewmodel = getIt<SignUpViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 340.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffffefbf),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.r),
                      bottomRight: Radius.circular(30.r))),
              child: Column(
                children: [
                  Image.asset(
                    Appimages.pan,
                    fit: BoxFit.fitHeight,
                    width: double.infinity,
                    height: 200.h,
                  ),
                  Image.asset(
                    Appimages.logo,
                    height: 80.h,
                  )
                ],
              ),
            ),
            BlocListener<SignUpViewModel, SignUpState>(
              bloc: viewmodel,
              listener: (context, state) {
                if (state is SignUpLoading) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Loading')));
                } else if (state is SignUpError) {
                  CustomDialog.show(
                    context,
                    dialogType: DialogType.error,
                    title: 'Error , Sign Up',
                    description: state.fauilers.errorMassage,
                    onOkPress: () {},
                  );
                } else if (state is SignUpSuccess) {
                  CustomDialog.show(
                    context,
                    dialogType: DialogType.success,
                    title: 'successfully',
                    description: 'success, Sign up',
                    onOkPress: () {},
                  );

                }
              },
              child: Container(
                height: 600.h,
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
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 25.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                          fontSize: 25.sp, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: Colors.grey[200]),
                      child: TextFormField(
                        controller: viewmodel.name,
                        decoration: InputDecoration(
                            hintText: 'Enter Your Name',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.person_2_outlined)),
                      ),
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 25.sp, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 3.h, horizontal: 10.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: Colors.grey[200]),
                      child: TextFormField(
                        controller: viewmodel.email,
                        decoration: InputDecoration(
                            hintText: 'Enter Your Email',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.mail_outline)),
                      ),
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 25.sp, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: Colors.grey[200]),
                      child: TextFormField(
                        controller: viewmodel.password,
                        decoration: InputDecoration(
                            hintText: 'Enter Your Password',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.password)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 15.w),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: TextButton(
                          onPressed: () {
                            viewmodel.signup();
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    Alreadyhaveaccount()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
