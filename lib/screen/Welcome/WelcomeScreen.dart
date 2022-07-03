import 'package:flutter/material.dart';
import 'package:menuapp/assets/dart/theme.dart';
import 'package:themed/themed.dart';
import 'package:unicons/unicons.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO : Floating Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/login");
        },
        child: Icon(UniconsLine.user),
        backgroundColor: JK_Primery,
      ),
      body: SafeArea(
        child: Stack(children: [
          ChangeColors(
            brightness: -.2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/image/bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                logoImage(),
                nameRestaurant(),
                disc(),
                SizedBox(
                  height: 120,
                ),
                button(context),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Padding button(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Center(
        child: JK_Button.Button(
            width: widthSize(context) * 0.18,
            height: 18,
            text: "قائمة الطعام",
            fontSize: 19,
            onPress: () {
              Navigator.pushReplacementNamed(context, "/home");
            },  
            border: 15,
            shadow: 10),
      ),
    );
  }

  Padding disc() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 30),
      child: Center(
        child: Text(
          "وصف ",
          style: TextStyle(
              color: JK_Gray, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Padding nameRestaurant() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 10),
      child: Center(
        child: Text(
          "اسم المطعم",
          style: TextStyle(
              color: JK_Black, fontSize: 29, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Padding logoImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, bottom: 30),
      child: Material(
        borderRadius: BorderRadius.circular(100),
        elevation: 5,
        child: CircleAvatar(
          backgroundImage: AssetImage("lib/assets/image/logo1.png"),
          radius: 100.0,
        ),
      ),
    );
  }
}
