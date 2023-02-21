import 'package:flutter/material.dart';
import 'package:interview_sample/controller/home_controller.dart';
import 'package:interview_sample/view/bottom_nav_bar/botto_nav_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeController()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: const Color(0xFF5f2acf)),
        debugShowCheckedModeBanner: false,
        home: const BottomNavBar(),
      ),
    );
  }
}
