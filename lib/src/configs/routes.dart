import 'package:ecommerce/src/pages/home_page.dart';
import 'package:get/get.dart';

class Routes {
  static const mainPage = '/home-page';

  static final routes = [
    GetPage(name: mainPage, page: () => MyHomePage())
  ];
}