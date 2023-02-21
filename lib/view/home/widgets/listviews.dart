import 'package:flutter/material.dart';

import 'listview_horizontal.dart';
import 'listview_vertical.dart';

Widget bottomSection() {
  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12, top: 10),
      child: Column(
        children: [
          horizontalListView(),
          const SizedBox(height: 5),
          verticalListview(),
        ],
      ),
    ),
  );
}
