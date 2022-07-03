import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:menuapp/function/CartControl.dart';
import 'package:unicons/unicons.dart';
import '../assets/dart/theme.dart';
import "package:get/get.dart";

//TODO ; AppBar Cart
class JK_AppbarCart extends StatefulWidget {
  final String title;
  final VoidCallback cartOnPress;
  JK_AppbarCart({Key? key, required this.title, required this.cartOnPress})
      : super(key: key);
  @override
  State<JK_AppbarCart> createState() => _JK_AppbarCartState();
}

class _JK_AppbarCartState extends State<JK_AppbarCart> {
  final CartControl control = Get.put(CartControl());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: widget.cartOnPress,
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: JK_White,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.black12,
                      offset: Offset(1, 1),
                      spreadRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Badge(
                  animationType: BadgeAnimationType.scale,
                  badgeContent: Obx(() => Text(
                        control.cartNumber.toString(),
                        style: TextStyle(
                            color: JK_White,
                            fontWeight: FontWeight.w500,
                            height: 2.5),
                        textAlign: TextAlign.center,
                      )),
                  position: BadgePosition.topEnd(top: -25),
                  padding: EdgeInsets.all(5),
                  child: Icon(UniconsLine.shopping_cart, size: 30)),
            ),
          ),
          Text(
            widget.title,
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.w700, color: JK_Black),
          ),
        ],
      ),
    );
  }
}

class JK_AppbarArrow extends StatelessWidget {
  const JK_AppbarArrow({Key? key, required this.title, required this.ctx})
      : super(key: key);
  final String title;
  final BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: JK_White,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.black12,
                      offset: Offset(1, 1),
                      spreadRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(UniconsLine.angle_left_b, size: 30),
            ),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.w700, color: JK_Black),
          ),
        ],
      ),
    );
  }
}
