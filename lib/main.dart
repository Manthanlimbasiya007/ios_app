import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_app/screen/provider/third_provider.dart';
import 'package:ios_app/screen/view/fourth_screen.dart';
import 'package:ios_app/screen/view/home_screen.dart';
import 'package:ios_app/screen/view/second_screen.dart';
import 'package:ios_app/screen/view/third_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThirdProvider(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => thirdscreen(),
        'home': (context) => homescreen(),
        'second': (context) => secondscreen(),
        'fourth': (context) => fourthscreen(),
      },
    ),
  ));
}