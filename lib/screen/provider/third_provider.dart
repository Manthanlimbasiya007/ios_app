
import 'package:flutter/material.dart';
import 'package:ios_app/screen/view/home_screen.dart';
import 'package:ios_app/screen/view/second_screen.dart';

import '../view/fourth_screen.dart';

class ThirdProvider extends ChangeNotifier
{
  List screenList = [
    homescreen(),
    secondscreen(),
    fourthscreen(),
  ];
}