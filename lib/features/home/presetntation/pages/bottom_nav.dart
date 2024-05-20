import 'package:eccomerce/constants/export.dart';
import 'package:eccomerce/features/home/data/local/home_static_repo.dart';
import 'package:eccomerce/features/home/presetntation/bloc/cubit/home_cubit.dart';
import 'package:eccomerce/globalwidget/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final watchHome = context.watch<HomeCubit>();
    return Scaffold(
        extendBody: true,
        body: watchHome.bottomnavScreen[watchHome.bottonnavIndex],
        bottomNavigationBar: AppshadowContainer(
            height: size.height * 0.08,
            radius: size.width * 0.1,
            margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.03, vertical: size.width * 0.02),
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.04, vertical: size.width * 0.02),
            color: const Color(0xff30363e),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    4,
                    (index) => BottomNavButtons(
                        onTap: () =>
                            context.read<HomeCubit>().changeBottomNav(index),
                        icon: HomestaticRepo.bottomNav[index].icon!,
                        title: HomestaticRepo.bottomNav[index].title!,
                        size: size,
                        isActive: watchHome.bottonnavIndex == index)))));
  }
}

class BottomNavButtons extends StatelessWidget {
  const BottomNavButtons(
      {super.key,
      required this.size,
      this.isActive = false,
      required this.icon,
      required this.title,
      this.onTap});

  final Size size;
  final bool isActive;
  final IconData icon;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? AppshadowContainer(
            onTap: onTap,
            radius: size.width * 0.1,
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.02, vertical: size.width * 0.02),
            color: Appcolors.buttonColor,
            child: Row(children: [
              Icon(icon, size: 25.sp),
              SizedBox(width: size.width * 0.01),
              AppText(text: title, size: 14, fontweight: FontWeight.w500)
            ]))
        : GestureDetector(
            onTap: onTap,
            child: Icon(icon, size: 25.sp, color: Appcolors.white));
  }
}
