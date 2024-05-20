import 'package:eccomerce/constants/appcolors.dart';
import 'package:eccomerce/constants/export.dart';
import 'package:flutter/material.dart';
import '../../../../config/page route/page_route.dart';
import '../../../../globalwidget/export.dart';
import '../widgets/auth_checkbox.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AppScaffold(
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            children: [
          SizedBox(height: size.height * 0.06),
          const AppText(text: 'Login', size: 30, fontweight: FontWeight.w500),
          SizedBox(height: size.height * 0.05),
          const ApptextField(
              hinttext: '@Email', prefixIcon: Icons.email_outlined),
          SizedBox(height: size.height * 0.03),
          const ApptextField(
              hinttext: 'Password',
              prefixIcon: Icons.lock_outline,
              sufixIcon: Icons.visibility_outlined),
          SizedBox(height: size.height * 0.03),
          const Align(
              alignment: Alignment.centerRight,
              child: AppText(
                  text: 'Forget Password?',
                  size: 14,
                  fontweight: FontWeight.w500)),
          SizedBox(height: size.height * 0.03),
          Row(children: [
            const AppCheckbox(),
            SizedBox(width: size.width * 0.02),
            const AppText(text: 'Auto Login')
          ]),
          SizedBox(height: size.height * 0.03),
          Appbutton(
              buttonColor: Appcolors.blackColor,
              label: "Login",
              labelColor: Appcolors.white),
          SizedBox(height: size.height * 0.04),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const AppText(text: 'Don\'t have an acoount? '),
            GestureDetector(
                onTap: () => Navigator.pushNamed(context, RouteName.signUp),
                child:
                    const AppText(text: 'Signup', fontweight: FontWeight.w600))
          ])
        ]));
  }
}
