import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sofort/ui/home_page.dart';

import 'package:sofort/app_routes.dart' as route;

void main() {HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: route.controller,


        initialRoute: route.homePage);
  }
}
