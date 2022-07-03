import 'package:flutter/material.dart';
import 'package:menuapp/assets/dart/theme.dart';
import 'package:menuapp/component/appbar.dart';
import 'package:unicons/unicons.dart';
import '../screen/Welcome/WelcomeScreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "lib/assets/image/login.png",
                    fit: BoxFit.fill,
                    height: 400,
                    width: widthSize(context),
                  ),
                  JK_AppbarArrow(title: "", ctx: context),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            logoImage(),
                            Text("تسجيل الدخول",
                                style: TextStyle(
                                    color: JK_White,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(height: 50),
                            usernameInput(
                              hint:"اسم المستخدم",
                              icon:UniconsLine.user,
                              keyboard:TextInputType.text,
                              isPassword: false
                            ),
                            SizedBox(height: 25),
                             usernameInput(
                               hint:"كلمة السر ",
                              icon: UniconsLine.lock,
                               keyboard:TextInputType.text,
                               isPassword: true
                             ),

                             SizedBox(height: 100),
                             JK_Button.Button(
                               width: 90, 
                               height: 20,
                              text: "تسجيل الدخول",
                              border: 30.0,
                              fontSize: 17,
                                )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding usernameInput({String? hint , icon , keyboard , bool? isPassword}) {
    return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black12.withOpacity(.1),
                                  offset: Offset(1, 1),
                                  spreadRadius: 1,
                                )
                              ]
                              ),
                              child: TextFormField (
                                textDirection: TextDirection.rtl,
                                keyboardType: keyboard,
                                style: TextStyle(color: JK_Gray),
                                textAlign: TextAlign.right,
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  
                                  hintStyle: TextStyle(fontSize: 16),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: BorderSide.none),
                                  suffixIcon: Icon(icon,color: JK_Primery,),
                                  hintText: hint,
                                  fillColor: JK_White,
                                  filled: true,
                                  
                                  
                                ),
                                obscureText: isPassword!,
                              ),
                            ),
                          );
  }
}

Padding logoImage() {
  return Padding(
    padding: const EdgeInsets.only(top: 50.0, bottom: 30),
    child: Material(
      borderRadius: BorderRadius.circular(100),
      elevation: 5,
      child: CircleAvatar(
        backgroundImage: AssetImage("lib/assets/image/logo1.png"),
        radius: 80.0,
      ),
    ),
  );
}
