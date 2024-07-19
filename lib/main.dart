import 'package:c11_flutter_friday/homescreen.dart';
import 'package:c11_flutter_friday/newscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Newscreen.routeName,
      routes:{
        Homescreen.routeName: (context)=> Homescreen(),
        Newscreen.routeName: (context)=> Newscreen(),
      },
    );
  }
}
