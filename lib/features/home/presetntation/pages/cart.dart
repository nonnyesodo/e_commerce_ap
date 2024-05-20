import 'package:eccomerce/constants/appcolors.dart';
import 'package:eccomerce/constants/export.dart';
import 'package:eccomerce/features/home/data/local/homeimages.dart';
import 'package:eccomerce/globalwidget/appbar.dart';
import 'package:eccomerce/globalwidget/appbutton.dart';
import 'package:eccomerce/globalwidget/appscaffold.dart';
import 'package:eccomerce/globalwidget/appshadowcontainer.dart';
import 'package:eccomerce/globalwidget/apptext.dart';
import 'package:eccomerce/globalwidget/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    int lenght = 10;
    return AppScaffold(
        color: Appcolors.buttonColor.withOpacity(0.3),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
          child: Column(children: [
            const CustomAppbar(title: 'Cart'),
            SizedBox(height: size.height * 0.03),
            Expanded(
                child: ListView(
                    children: List.generate(
                        lenght + 1,
                        (index) => lenght == index
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                    SizedBox(height: size.height * 0.08),
                                    const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AppText(
                                              text: 'Total',
                                              size: 22,
                                              fontweight: FontWeight.w500),
                                          AppText(text: '\$500')
                                        ]),
                                    SizedBox(height: size.height * 0.02),
                                    Appbutton(
                                        label: 'Procced to Checkout',
                                        labelColor: Appcolors.white,
                                        buttonColor: const Color(0xffc27457))
                                  ])
                            : AppshadowContainer(
                                margin:
                                    EdgeInsets.only(bottom: size.width * 0.03),
                                padding: EdgeInsets.all(size.width * 0.03),
                                border: true,
                                borderColor:
                                    Appcolors.blackColor.withOpacity(0.5),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              size.width * 0.03),
                                          child: Image.asset(HomeImages.girl,
                                              width: size.width * 0.2,
                                              height: size.width * 0.23,
                                              fit: BoxFit.cover)),
                                      SizedBox(
                                          width: size.width * 0.32,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const AppText(
                                                    text:
                                                        'Women wear collection',
                                                    size: 16,
                                                    fontweight:
                                                        FontWeight.w500),
                                                SizedBox(
                                                    height: size.height * 0.01),
                                                const AppText(
                                                    text: '\$250',
                                                    size: 16,
                                                    fontweight: FontWeight.w500)
                                              ])),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Icon(Icons.delete,
                                                size: 25.sp,
                                                color: Appcolors.redColor),
                                            SizedBox(
                                                height: size.height * 0.01),
                                            AppshadowContainer(
                                                padding: EdgeInsets.all(
                                                    size.width * 0.01),
                                                color: Appcolors.buttonColor,
                                                width: size.width * 0.25,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Icon(Icons.add,
                                                          size: 25.sp),
                                                      const AppText(
                                                          text: '1',
                                                          fontweight:
                                                              FontWeight.w500),
                                                      Icon(Icons.remove,
                                                          size: 25.sp)
                                                    ]))
                                          ])
                                    ]),
                              ))))
          ]),
        ));
  }
}
