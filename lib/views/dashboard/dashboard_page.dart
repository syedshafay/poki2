import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poki/router/route_constant.dart';
import 'package:poki/values/constant_colors.dart';
import 'package:poki/views/home/home_page.dart';
import 'package:poki/views/profile/profile_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final PageController _pageController = PageController();
  int _selectIndex = 0;

  final List<Widget> _screens = const [
    HomePage(),
    ProfilePage(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  void _onItemTapped(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.black,
      body: PageView(
        children: _screens,
        controller: _pageController,
        onPageChanged: _onPageChanged,
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _onItemTapped(0);
                },
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      _selectIndex == 0
                          ? BoxShadow(
                              color: ConstantColors.whiteColor.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 20,
                              offset: const Offset(0, 0),
                            )
                          : const BoxShadow(),
                    ],
                  ),
                  child: const Icon(
                    Icons.home,
                    size: 30,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, uploadRoute);
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: ConstantColors.whiteColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(
                    FontAwesomeIcons.plus,
                    size: 30,
                    color: ConstantColors.black,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _onItemTapped(1);
                },
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      _selectIndex == 1
                          ? BoxShadow(
                              color: ConstantColors.whiteColor.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 20,
                              offset: const Offset(0, 0),
                            )
                          : const BoxShadow(),
                    ],
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
