import 'package:flutter/material.dart';

extension onPressed on Widget {
  Widget ripple(Function onPressed,
      {BorderRadiusGeometry borderRadius = const BorderRadius.all(Radius.circular(5))}) =>
      Stack(
        children: [
          this,
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: borderRadius)
                )
              ),
              onPressed: () {
                if (onPressed != null) {
                  onPressed();
                }
              },
              child: Container(),
            ),
          )
        ],
      );
}