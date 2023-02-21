import 'package:flutter/material.dart';

Widget aboveWidget() {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customContainer(Icons.search),
        Container(
          width: 225,
          height: 30,
          decoration: BoxDecoration(
            color: const Color(0xFF7f55d9),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'A/C : **8745',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        customContainer(Icons.notifications),
      ],
    ),
  );
}

Widget customContainer(IconData icon) {
  return Container(
    width: 30,
    height: 30,
    decoration: BoxDecoration(
      color: const Color(0xFF7f55d9),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Icon(
      icon,
      color: Colors.white,
    ),
  );
}
