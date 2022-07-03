import 'package:flutter/material.dart';
import 'package:menuapp/screen/Cart/CartScreen.dart';
import 'package:menuapp/screen/Home/HomeScreen.dart';
import 'package:menuapp/screen/Welcome/WelcomeScreen.dart';

import '../admin/LoginScreen.dart';
import '../screen/View/ViewScreen.dart';

var routes = {
  "/": (context) => WelcomeScreen(),
  "/home": (context) => HomeScreen(),
  "/cart": (context) => CartScreen(),
  "/view": (context) => ViewScreen(),
  "/login": (context) => LoginScreen(),
};
