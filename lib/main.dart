import 'package:ecommerce/src/configs/routes.dart';
import 'package:ecommerce/src/pages/main_page.dart';
import 'package:ecommerce/src/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E-Commerce',
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: Routes.routes,
      home: MainPage(),
    );
  }
}
