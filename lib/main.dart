import 'package:flutter/material.dart';
import 'baking_page.dart';
import 'home_page.dart';

void main() {
  runApp(CakeMakerApp());
}

class CakeMakerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        BakingPage.routeName: (context) => BakingPage(),

        //BakingPage
      },
    );
  }
}
