import 'package:currency_converter/designs/cupertino_hompage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'designs/material_homepage.dart';

void main() {
  return runApp(
    const MyApp(),
  );
}

//Home Build for Android
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HostPage(),
    );
  }
}

// Home Build for IOS

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoHomePage(),
    );
  }
}
