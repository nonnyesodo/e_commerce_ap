import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/export.dart';

class ApptextField extends StatelessWidget {
  const ApptextField({
    super.key,
    required this.hinttext,
    this.prefixIcon,
    this.sufixIcon,
    this.controller,
  });
  final String hinttext;
  final IconData? prefixIcon, sufixIcon;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            suffixIconColor: MaterialStateColor.resolveWith((states) =>
                states.contains(MaterialState.focused)
                    ? Appcolors.blackColor
                    : Appcolors.blackColor.withOpacity(0.4)),
            prefixIconColor: MaterialStateColor.resolveWith((states) =>
                states.contains(MaterialState.focused)
                    ? Appcolors.blackColor
                    : Appcolors.blackColor.withOpacity(0.4)),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Appcolors.blackColor.withOpacity(0.4))),
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Appcolors.blackColor)),
            hintText: hinttext,
            suffixIcon: Icon(sufixIcon, size: 25.sp),
            prefixIcon: Icon(prefixIcon, size: 25.sp)));
  }
}
