import 'package:ecommerce/src/models/data.dart';
import 'package:ecommerce/src/models/product.dart';
import 'package:ecommerce/src/themes/light_color.dart';
import 'package:ecommerce/src/themes/theme.dart';
import 'package:ecommerce/src/widgets/title_text.dart';
import 'package:flutter/material.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  Widget cartItems() {
    return Column(
        children: AppData.cartList.map((x) => customItem(x)).toList());
  }

  Widget customItem(Product model) {
    return Container(
      height: 80,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 70,
                    width: 70,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            decoration: BoxDecoration(
                                color: LightColor.lightGrey,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: -20,
                  bottom: -20,
                  child: Image.asset(model.imageUrl),
                )
              ],
            ),
          ),
          Expanded(
            child: ListTile(
              title: TitleText(
                text: model.name,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              subtitle: Row(
                children: [
                  TitleText(
                    text: '\$ ',
                    color: LightColor.red,
                    fontSize: 12,
                  ),
                  TitleText(
                    text: model.price.toString(),
                    fontSize: 14,
                  )
                ],
              ),
              trailing: Container(
                width: 35,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: LightColor.lightGrey.withAlpha(150),
                    borderRadius: BorderRadius.circular(10)),
                child: TitleText(
                  text: "x${model.id}",
                  fontSize: 12,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget price() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleText(
          text: "${AppData.cartList.length} Items",
          color: LightColor.grey,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        TitleText(
          text: '\$${getPrice()}',
          fontSize: 18,
        )
      ],
    );
  }

  Widget submitButton(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 4),
        width: AppTheme.fullWidth(context) * 0.75,
        child: TitleText(
          text: "Next",
          color: LightColor.background,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  double getPrice() {
    double price = 0;
    AppData.cartList.forEach((x) {
      price += x.price * x.id;
    });
    return price;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppTheme.padding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            cartItems(),
            Divider(),
            price(),
            SizedBox(
              height: 30,
            ),
            submitButton(context)
          ],
        ),
      ),
    );
  }
}
