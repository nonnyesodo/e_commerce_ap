import 'package:eccomerce/config/page%20route/page_route.dart';
import 'package:eccomerce/constants/export.dart';
import 'package:eccomerce/features/home/data/local/homeimages.dart';
import 'package:flutter/material.dart';
import '../../../../globalwidget/export.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    filterQuality: FilterQuality.low,
                    image: AssetImage(HomeImages.girl),
                    fit: BoxFit.cover)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                      text: 'Create unique\nsytle on your own',
                      color: Appcolors.white,
                      size: 35,
                      fontweight: FontWeight.w700),
                  SizedBox(height: size.height * 0.01),
                  AppText(
                      text:
                          'We provide various collection of clothes for women that helps you to be unique and stylish',
                      color: Appcolors.white,
                      fontweight: FontWeight.w300),
                  SizedBox(height: size.height * 0.03),
                  Appbutton(
                      label: 'Get Started',
                      onTap: () =>
                          Navigator.pushNamed(context, RouteName.login)),
                  SizedBox(height: size.height * 0.04)
                ])));
  }
}
