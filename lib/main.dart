import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/first.dart';

//test

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        accentColor: Colors.purpleAccent, primaryColor: Colors.purple),
    home: First(),
  ));
}
