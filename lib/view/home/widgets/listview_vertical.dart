import 'package:flutter/material.dart';

Widget verticalListview() {
  return Expanded(
    child: ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            height: 33,
            width: 33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage(
                    'assets/minimal-black-volcano-lrbbdq2119bppprs.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Netflix'),
              Text(
                '06.10.2022 10:30 PM',
                style: TextStyle(
                  color: Color(0xFFb2b2b2),
                  fontSize: 12,
                ),
              )
            ],
          ),
          trailing: const Text(
            '\$12',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 5);
      },
      itemCount: 10,
    ),
  );
}
