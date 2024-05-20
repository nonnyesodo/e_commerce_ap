import 'package:eccomerce/features/authentication/presentation/pages/login.dart';
import 'package:eccomerce/features/authentication/presentation/pages/signup.dart';
import 'package:eccomerce/features/home/presetntation/pages/bottom_nav.dart';
import 'package:eccomerce/features/home/presetntation/pages/product_detatils.dart';
import 'package:flutter/cupertino.dart';
import '../../../features/home/presetntation/pages/onboard.dart';
import '../page_route.dart';

class AppRoute {
  static Route onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.onboard:
        return CustomPageRoute(
            direction: AxisDirection.left,
            duration: 500,
            child: const Onboard());
      case RouteName.login:
        return CustomPageRoute(
            duration: 500, direction: AxisDirection.left, child: const Login());
      case RouteName.signUp:
        return CustomPageRoute(
            duration: 500,
            direction: AxisDirection.left,
            child: const SignUp());
      case RouteName.bottomnavs:
        return CustomPageRoute(
            direction: AxisDirection.left,
            duration: 500,
            child: const BottomNav());
      case RouteName.productDetail:
        return CustomPageRoute(
            duration: 500,
            direction: AxisDirection.up,
            child: const ProductDetail());

      default:
        return CustomPageRoute(child: const Onboard());
    }
  }
}
