import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import "../../globals.dart" as glob;

const Color JK_Primery = Color.fromRGBO(254, 74, 0, 1);
const Color JK_White = Color.fromRGBO(248, 248, 248, 1);
const Color JK_LightWhite = Color.fromRGBO(239, 239, 239, 1);
const Color JK_Black = Color.fromRGBO(74, 74, 74, 1);
const Color JK_Gray = Color.fromRGBO(92, 92, 92, 1);

double widthSize(BuildContext ctx) => MediaQuery.of(ctx).size.width;
double hightSize(BuildContext ctx) => MediaQuery.of(ctx).size.height;

class JK_Container extends StatelessWidget {
  const JK_Container({Key? key, required this.width, required this.height, this.child}) : super(key: key);
  final double width;
  final double height;
  final child;
  @override
  Widget build(BuildContext context) {
    return Container(
        
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: JK_White,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black12.withOpacity(.1),
                offset: Offset(1, 1),
                spreadRadius: 1,
              )
            ]),
        child:child);
  }
}

class JK_Button {
  static TextButton Button(
      {required width,
      required height,
      required String? text,
      color,
      double? border,
      double? fontSize,
      Icon? icon,
      bool? rightIcon = true,
      fontColor,
      shadow,
      onPress}) {
    var _myColor = color == null ? JK_Primery : color;
    var _mywidth = (width == null ? 40.0 : width).toDouble();
    var _myheight = (height == null ? 20.0 : height).toDouble();
    var _myborder = (border == null ? 10.0 : border).toDouble();
    var _myfont = (fontSize == null ? 15 : fontSize).toDouble();
    var _myicon = (icon == null ? Text("") : icon);
    var _myfontColor = (fontColor == null ? Colors.white : fontColor);
    var _myshadow = (shadow == null ? 2 : shadow).toDouble();

    return TextButton(
        child: Row(
          children: [
            (rightIcon == true ? _myicon : Text("")),
            Text(
              '$text',
              style: TextStyle(color: _myfontColor, fontFamily: "Tajawal"),
            ),
            (rightIcon == false ? _myicon : Text(""))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
        ),
        onPressed: onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(_myColor),
          foregroundColor: MaterialStateProperty.all<Color>(_myfontColor),
          elevation: MaterialStateProperty.all<double>(_myshadow),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.only(
                  left: _mywidth,
                  right: _mywidth,
                  top: _myheight,
                  bottom: _myheight)),
          textStyle: MaterialStateProperty.all<TextStyle>(
              TextStyle(fontSize: _myfont)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_myborder),
          )),
        ));
  }

  static TextButton Outline(
      {required width,
      required height,
      required String? text,
      color,
      double? border,
      double? fontSize,
      Icon? icon,
      bool? rightIcon = true,
      fontColor,
      onPress}) {
    var _myColor = color == null ? JK_Primery : color;
    var _mywidth = (width == null ? 40.0 : width).toDouble();
    var _myheight = (height == null ? 20.0 : height).toDouble();
    var _myborder = (border == null ? 10.0 : border).toDouble();
    var _myfont = (fontSize == null ? 15 : fontSize).toDouble();
    var _myicon = (icon == null ? Text("") : icon);
    var _myfontColor = (fontColor == null ? Colors.white : fontColor);

    return TextButton(
        child: Row(
          children: [
            (rightIcon == true ? _myicon : Text("")),
            Text(
              '$text',
              style: TextStyle(color: _myfontColor),
            ),
            (rightIcon == false ? _myicon : Text(""))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
        ),
        onPressed: onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          foregroundColor: MaterialStateProperty.all<Color>(_myColor),
          elevation: MaterialStateProperty.all<double>(0),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.only(
                  left: _mywidth,
                  right: _mywidth,
                  top: _myheight,
                  bottom: _myheight)),
          textStyle: MaterialStateProperty.all<TextStyle>(
              TextStyle(fontSize: _myfont)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(_myborder),
                  side: BorderSide(width: 2, color: _myColor))),
        ));
  }
}
