import 'package:eccomerce/constants/appcolors.dart';
import 'package:eccomerce/features/home/data/local/homeimages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../globalwidget/export.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.015),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ProductImage(size: size),
              SizedBox(height: size.height * 0.01),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                              text: 'Nike SportWear',
                              fontweight: FontWeight.w600),
                          AppText(text: 'By Addidas', size: 14)
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                              text: '\$50',
                              size: 16,
                              fontweight: FontWeight.w600),
                          AppText(text: '\$100', size: 16),
                        ]),
                  ]),
              SizedBox(height: size.height * 0.01),
              const AppText(
                  text: 'Description', size: 14, fontweight: FontWeight.w600),
              const AppText(
                  text:
                      'great an amazing product feat for oejrbjbhb m,sbamcbjhvchjvbdm b nmbchjdbgv  nb shxbjdhs vn fjhvdhvb fvvdnbhvbdj  nvb djb',
                  size: 14),
              SizedBox(height: size.height * 0.09),
              const Appbutton(label: 'Add to Cart'),
            ])));
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AppshadowContainer(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        radius: size.width * 0.1,
        color: Appcolors.blue.withOpacity(0.2),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.035),
            const CustomAppbar(title: 'Product Details'),
            SizedBox(height: size.height * 0.02),
            Row(children: [
              Column(
                  children: List.generate(
                      3,
                      (index) => AppshadowContainer(
                            margin: EdgeInsets.only(bottom: size.width * 0.01),
                            border: true,
                            borderColor: Appcolors.blackColor,
                            height: size.height * 0.07,
                            width: size.height * 0.07,
                            child: Image.asset(HomeImages.girl,
                                width: size.width, fit: BoxFit.contain),
                          ))),
              SizedBox(width: size.width * 0.03),
              Expanded(
                  child: Image.asset(HomeImages.girl,
                      height: size.height * 0.55,
                      width: size.width,
                      fit: BoxFit.contain))
            ])
          ],
        ));
  }
}
