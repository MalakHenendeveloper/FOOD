import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/person/widgets/ItemPersonCard.dart';

import '../../../core/injectable/injectable.dart';
import '../../../data/Model/User.dart';
import '../Cubit/PersonState.dart';
import '../Cubit/PersonViewModel.dart';

class Bodyperson extends StatelessWidget {
   Bodyperson({super.key});
  final viewModel = getIt<PersonViewModel>();
  final userId = FirebaseAuth.instance.currentUser?.uid;
  @override
  Widget build(BuildContext context) {
    return
      BlocBuilder<PersonViewModel, PersonState>(
        bloc: viewModel..getuser(UserModel(id: userId)),
        builder: (context, state) {
          if (state is PersonLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is PersonError) {
            return Center(child: Text(state.fauilers.errorMassage));
          }
          if (state is PersonSuccess) {
            return
              Column(
                children: [
                  Text(
                    'My Profile',
                    style: TextStyle(
                        fontSize: 22.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.h),
                  Itempersoncard(
                    icon: Icons.person,
                    value: 'Name',
                    title: state.user.name ?? "",
                  ),
                  Itempersoncard(
                    icon: Icons.mail,
                    value: 'Email',
                    title: state.user.email ?? "",
                  ),
                  Itempersoncard(
                    icon: Icons.policy,
                    value: 'Terms and Conditions',
                  ),
                  Itempersoncard(
                    icon: Icons.delete,
                    value: 'Delete Account',
                    onTap: () {
                      viewModel.deleteuser(context);
                    },
                  ),
                  Itempersoncard(
                    icon: Icons.logout,
                    value: 'Logout',
                    onTap: () {
                      viewModel.logout(context);
                    },
                  ),
                ],
              );
          }
          return Center(child: Text('No Data Available'));
        },
      );
  }
}
