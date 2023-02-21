import 'package:flutter/material.dart';

import 'widgets/listviews.dart';
import 'widgets/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverLayoutBuilder(builder: (context, constraints) {
                final scrolled = constraints.scrollOffset > 250;
                return SliverAppBar(
                  backgroundColor: const Color(0xff5f2acf),
                  expandedHeight: 311,
                  floating: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    expandedTitleScale: 1,
                    title: scrolled
                        ? const Text(
                            'A/C : **8745',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : const Text(''),
                    background: topSection(),
                  ),
                );
              }),
            ];
          },
          body: bottomSection(),
        ),
      ),
    );
  }
}
