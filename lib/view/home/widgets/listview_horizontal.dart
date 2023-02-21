import 'package:flutter/material.dart';

Widget horizontalListView() {
  return SizedBox(
    height: 100,
    child: Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 10);
        },
        itemBuilder: (context, index) {
          return Container(
            width: 220,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xfff2f2f2),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 12, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  itemHead(),
                  const SizedBox(height: 9),
                  Container(
                    color: const Color(0xffeedb2e),
                    height: 20,
                    width: 120,
                    child: const Center(
                      child: Text(
                        'Upcoming payments',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$1242',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 55,
                        color: const Color(0xff3632f1),
                        child: const Center(
                          child: Text(
                            'Pay Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: 4,
      ),
    ),
  );
}

Widget itemHead() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'House Rent',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 2),
          Text(
            'Amsterdam house',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
      const CircleAvatar(
        backgroundColor: Color(0xfff1f1f7),
        radius: 14,
        child: Icon(
          Icons.home,
          color: Colors.blue,
          size: 17,
        ),
      )
    ],
  );
}
