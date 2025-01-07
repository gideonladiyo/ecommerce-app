import 'package:ecommerce/src/pages/home_page.dart';
import 'package:ecommerce/src/pages/shopping_cart.dart';
import 'package:ecommerce/src/themes/light_color.dart';
import 'package:ecommerce/src/themes/theme.dart';
import 'package:ecommerce/src/widgets/extensions.dart';
import 'package:ecommerce/src/widgets/title_text.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key, this.title});

  final String? title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isHomePageSelected = true;
  Widget customAppBar() {
    return Container(
      padding: AppTheme.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RotatedBox(
            quarterTurns: 4,
            child: customIcon(Icons.sort, color: Colors.black54),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(13)),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color(0xfff8f8f8),
                    blurRadius: 10,
                    spreadRadius: 10
                  ),
                ]
              ),
              child: Image.asset("assets/user.png"),
            ),
          )
        ],
      ),
    ).ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(13)));
  }

  Widget customIcon(IconData icon, {Color color = LightColor.iconColor}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: AppTheme.shadow
      ),
      child: Icon(
        icon,
        color: color,
      ),
    ).ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(13)));
  }

  Widget customTitle() {
    return Container(
      margin: AppTheme.padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(
                text: isHomePageSelected ? 'our' : 'shopping',
                fontSize: 27,
                fontWeight: FontWeight.w400,
              ),
              TitleText(
                text: isHomePageSelected ? 'Products' : 'Cart',
                fontSize: 27,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          Spacer(),
          !isHomePageSelected
          ? Container(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.deblur_outlined,
              color: LightColor.orange,
            ),
          ).ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(13)))
              : SizedBox()
        ],
      ),
    );
  }

  void onBottomIconPressed(int index) {
    if (index == 0 || index == 1) {
      setState(() {
        isHomePageSelected = true;
      });
    } else {
      setState(() {
        isHomePageSelected = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                height: AppTheme.fullHeight(context) - 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xfffbfbfb),
                      Color(0xfff7f7f7),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    customAppBar(),
                    customTitle(),
                    Expanded(
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 300),
                        switchInCurve: Curves.easeInToLinear,
                        switchOutCurve: Curves.easeOutBack,
                        child: isHomePageSelected
                          ? MyHomePage()
                            : Align(
                          alignment: Alignment.topCenter,
                          child: ShoppingCartPage(),
                        )
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
