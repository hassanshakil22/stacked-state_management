import 'package:flutter/material.dart';
import 'package:state_management/app/app.locator.dart';
import 'package:state_management/screens/home/home_view.dart';

Future<void> main() async {
  await setupLocator();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      title: 'Flutter Demo',
    );
  }
}
