import 'package:flutter/material.dart';
import '../../../../config/page route/page_route.dart';
import '../../../../constants/export.dart';
import '../../../../globalwidget/export.dart';
import '../widgets/auth_checkbox.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AppScaffold(
        body: ListView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      children: [
        SizedBox(height: size.height * 0.06),
        const AppText(text: 'Signup', size: 30, fontweight: FontWeight.w500),
        SizedBox(height: size.height * 0.05),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              width: size.width * 0.45,
              child: const ApptextField(
                  hinttext: 'First Name', prefixIcon: Icons.person_2_outlined)),
          SizedBox(
              width: size.width * 0.45,
              child: const ApptextField(
                  hinttext: 'Last Name', prefixIcon: Icons.person_2_outlined))
        ]),
        SizedBox(height: size.height * 0.03),
        const ApptextField(
            hinttext: '@Email', prefixIcon: Icons.email_outlined),
        SizedBox(height: size.height * 0.03),
        const ApptextField(
            hinttext: 'Password',
            prefixIcon: Icons.lock_outline,
            sufixIcon: Icons.visibility_outlined),
        SizedBox(height: size.height * 0.03),
        Row(children: [
          const AppCheckbox(),
          SizedBox(width: size.width * 0.02),
          const AppText(text: 'I Agree to terms and policy guideline')
        ]),
        SizedBox(height: size.height * 0.03),
        Appbutton(
            buttonColor: Appcolors.blackColor,
            label: "Signup",
            labelColor: Appcolors.white),
        SizedBox(height: size.height * 0.04),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const AppText(text: 'Already have an acoount?'),
          GestureDetector(
              onTap: () => Navigator.pushNamed(context, RouteName.login),
              child: const AppText(text: 'Login', fontweight: FontWeight.w600))
        ])
      ],
    ));
  }
}
