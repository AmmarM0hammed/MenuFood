import 'package:flutter/material.dart';
import 'package:menuapp/component/appbar.dart';
import '../../assets/dart/theme.dart';
import 'Body.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
                  child: Column(
            children: [
              JK_AppbarCart(title: "الرئيسية", cartOnPress: () {
                Navigator.pushNamed(context, "/cart");
              }),
              SizedBox(height: 15),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
