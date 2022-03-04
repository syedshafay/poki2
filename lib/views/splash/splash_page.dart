import 'dart:async';
import 'package:flutter/material.dart';
import 'package:poki/router/route_constant.dart';
import 'package:poki/values/constant_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(
        context,
        dashboardRoute,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.dark,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage(Path.splashBg),
            //   fit: BoxFit.fill,
            // ),
            ),
        child: Center(
            // child: Image.asset(
            //   Path.logo,
            // ),
            ),
      ),
    );
  }
}
