import 'package:flutter/material.dart';
import 'package:interview_sample/view/home/home.dart';

class HomeController with ChangeNotifier {
  int currentIndex = 0;
  final List<Widget> _bottomScreens = [
    const HomePage(),
  ];

  List<Widget> get bottomScreen => _bottomScreens;
}
