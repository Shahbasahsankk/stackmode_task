import 'package:flutter/material.dart';
import 'package:interview_sample/controller/home_controller.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: controller.bottomScreen[controller.currentIndex],
        bottomNavigationBar: SizedBox(
          height: 50,
          child: BottomNavigationBar(
            iconSize: 30,
            backgroundColor: Colors.white,
            currentIndex: controller.currentIndex,
            elevation: 0,
            selectedItemColor: const Color(0xFF3632f1),
            unselectedItemColor: Colors.black,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedLabelStyle: const TextStyle(fontSize: 0),
            unselectedLabelStyle: const TextStyle(fontSize: 0),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.wallet),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.qr_code_scanner_rounded),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.format_list_numbered_sharp),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.person_sharp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
