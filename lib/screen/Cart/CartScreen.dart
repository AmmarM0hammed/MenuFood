import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menuapp/assets/dart/theme.dart';
import 'package:menuapp/component/appbar.dart';
import 'CartCart.dart';
import "../../function/CartControl.dart";
class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final CartControl control = Get.put(CartControl()); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
        children: [
          JK_AppbarArrow(title: "السلة", ctx: context),
          SizedBox(height: 20),
          SizedBox(
            height: hightSize(context) - 200,
            child: Expanded(
                child: ListView.builder(
                itemCount: control.cartList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: CartCard(),
                  );
                },
              ),
            ),
          ),
          
        ],
          ),
      ),
    );
  }
}
