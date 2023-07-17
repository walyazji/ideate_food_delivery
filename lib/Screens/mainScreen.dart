// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:ideate_food_delivery/Screens/screen1.dart';
import 'package:ideate_food_delivery/Screens/screen2.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  // the index of the current page
  int _activePage = 0;

  final List<Widget> _pages = [
    const Screen1(),
    const Screen2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
          SizedBox(height: 10),
          Positioned(
            bottom: 130,
            left: 220,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List<Widget>.generate(
                _pages.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      _pageController.animateToPage(index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInExpo);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Container(
                        width: 10,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: _activePage == index
                              ? const Color(0xFFFF6838)
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
