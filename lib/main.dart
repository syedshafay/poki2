import 'package:flutter/material.dart';
import 'package:poki/router/route_constant.dart';
import 'package:poki/router/routers.dart';
import 'package:poki/values/branding_color.dart';
import 'package:poki/views/profile/profile_helper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProfileHelper()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Poki',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: brandingColor,
        ),
        onGenerateRoute: Routers.onGenerateRoute,
        initialRoute: splashRoute,
      ),
    );
  }
}
