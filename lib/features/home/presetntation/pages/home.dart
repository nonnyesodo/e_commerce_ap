import 'package:eccomerce/config/page%20route/detail/route_name.dart';
import 'package:eccomerce/constants/appcolors.dart';
import 'package:eccomerce/constants/util/useful_methods.dart';
import 'package:eccomerce/globalwidget/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/local/homeimages.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AppScaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  AppText(text: Utils.getGreting()),
                  const AppText(
                      text: 'Nonny Esodo', fontweight: FontWeight.w500)
                ]),
                const AppText(text: 'EUR0STYLE')
              ]),
              SizedBox(height: size.height * 0.02),
              HomeCarousel(size: size),
              SizedBox(height: size.height * 0.02),
              Brands(size: size),
              SizedBox(height: size.height * 0.02),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const AppText(
                    text: 'New Arrival', size: 20, fontweight: FontWeight.w500),
                AppText(
                    text: 'See all',
                    size: 16,
                    color: Appcolors.blackColor.withOpacity(0.5))
              ]),
              SizedBox(height: size.height * 0.02),
              Products(size: size)
            ])));
  }
}

class Products extends StatelessWidget {
  const Products({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.count(
            childAspectRatio: 0.6,
            crossAxisCount: 2,
            crossAxisSpacing: size.width * 0.03,
            mainAxisSpacing: size.width * 0.03,
            children: List.generate(
                10,
                (index) => GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, RouteName.productDetail),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(children: [
                              ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(size.width * 0.05),
                                  child: Image.asset(HomeImages.girl,
                                      width: size.width,
                                      height: size.height * 0.3,
                                      fit: BoxFit.fill)),
                              Positioned(
                                  top: size.width * 0.01,
                                  right: size.width * 0.01,
                                  child: AppshadowContainer(
                                      radius: size.width * 0.1,
                                      width: size.width * 0.08,
                                      child: Icon(Icons.favorite_outline,
                                          size: 30.sp)))
                            ]),
                            const AppText(
                                text: '\$100',
                                size: 16,
                                fontweight: FontWeight.w600),
                            const AppText(text: 'Nike SportWear')
                          ]),
                    ))));
  }
}

class Brands extends StatelessWidget {
  const Brands({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(
                5,
                (index) => AppshadowContainer(
                      radius: size.width * 0.08,
                      margin: EdgeInsets.only(right: size.width * 0.02),
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.04),
                      color: Appcolors.buttonColor.withOpacity(0.5),
                      child: Icon(Icons.done, size: 50.sp),
                    ))));
  }
}

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
            // aspectRatio: 0.8,
            autoPlayInterval: const Duration(seconds: 6),
            height: size.height * 0.15,
            autoPlay: true),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(builder: (BuildContext context) {
            return Container(
                width: size.width,
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.width * 0.03),
                    color: Appcolors.lightgrey,
                    image: const DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(HomeImages.girl))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: size.height * 0.01),
                      AppText(
                          text: 'Women collection',
                          color: Appcolors.blackColor,
                          fontweight: FontWeight.w600),
                      SizedBox(height: size.height * 0.002),
                      AppText(
                          text: 'Discount up to 50%',
                          size: 14,
                          color: Appcolors.white),
                      SizedBox(height: size.height * 0.02),
                      Appbutton(
                          labelColor: Appcolors.white,
                          buttonColor: const Color(0xffc27457),
                          label: 'Browse',
                          height: size.width * 0.1,
                          width: size.width * 0.3)
                    ]));
          });
        }).toList());
  }
}
