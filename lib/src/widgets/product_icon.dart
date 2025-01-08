import 'package:ecommerce/src/models/category.dart';
import 'package:ecommerce/src/themes/light_color.dart';
import 'package:ecommerce/src/themes/theme.dart';
import 'package:flutter/material.dart';
import 'extensions.dart';

class ProductIcon extends StatelessWidget {
  final ValueChanged<ProductCategory> onSelected;
  final ProductCategory model;
  ProductIcon({
    required this.onSelected,
    required this.model
  });

  Widget build(BuildContext context){
    return model.id == null
        ? Container(width: 4,)
        : Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Container(
        padding: AppTheme.hPadding,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: model.isSelected
            ? LightColor.background
              : Colors.transparent,
          border: Border.all(
            color: model.isSelected ? LightColor.orange : LightColor.grey,
            width: model.isSelected ? 2 : 1
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: model.isSelected ? Color(0xfffbf2ef) : Colors.white,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(5, 5)
            )
          ]
        ),
      ).ripple(
          () {
            onSelected(model);
          },
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
    );
  }
}