import '../pages/splash_screen.dart';
import '../pages/login.dart';
import '../pages/homepage.dart';
import '../pages/cart.dart';
import 'route-name.dart';
import 'package:get/get.dart';

class PageRouteApp {
  static final page = [
    GetPage(
      name: RouteName.page_splash_screen,
      page: () => const SplashScreen()
    ),
    GetPage(
      name: RouteName.page_login,
      page: () => const LoginPage()
    ),
    GetPage(
      name: RouteName.page_homepage,
      page: () => HomePage()
    ),
    GetPage(
      name: RouteName.page_cart,
      page: () => const CartPage()
    ),
  ];
}