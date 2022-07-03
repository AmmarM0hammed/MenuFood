import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:menuapp/assets/dart/theme.dart';
import 'package:menuapp/component/appbar.dart';
import 'package:unicons/unicons.dart';

class ViewScreen extends StatefulWidget {
  ViewScreen({Key? key}) : super(key: key);

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  @override
  Widget build(BuildContext context) {
    //! passing data
    final routes =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    bool isSelect = false;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            JK_AppbarArrow(title: "اسم الطبق", ctx: context),
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Hero(
                      tag: "img",
                      child: FullScreenWidget(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "lib/assets/image/food.png",
                            fit: BoxFit.contain,
                            width: widthSize(context),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 2,
                      child: textMethod(
                          text: "9,000 د",
                          color: JK_Primery,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Flexible(
                      flex: 4,
                      child: textMethod(
                          text: " بيتزا باباروني",
                          color: JK_Black,
                          fontSize: 23.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                textMethod(
                    text: "وصف",
                    color: JK_Gray,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
                SizedBox(height: 150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     JK_Button.Button(
                            width: 90,
                            height: 20,
                            text: "اضافة الى السلة",
                            fontSize: 18,
                            onPress: () {
                             
                              setState(() {
                                isSelect = true;
                              });
                            })
                       
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding textMethod({String? text, color, fontSize, fontWeight}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              text!,
              style: TextStyle(
                  color: color, fontSize: fontSize!, fontWeight: fontWeight),
              overflow: TextOverflow.fade,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}

InkWell buttonInc(text, onPress) {
  return InkWell(
    onTap: onPress,
    child: Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: JK_Primery,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black12.withOpacity(.1),
              offset: Offset(1, 1),
              spreadRadius: 1,
            ),
          ],
          borderRadius: BorderRadius.circular(5)),
      child: Center(
          child: Text(text,
              style: TextStyle(
                  color: JK_White, fontSize: 20, fontWeight: FontWeight.w600))),
    ),
  );
}
