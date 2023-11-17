import 'package:comic_creator_dashtoon/constants/color.dart';
import 'package:comic_creator_dashtoon/home.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 1060, name: MOBILE),
          const Breakpoint(start: 1061, end: 1200, name: TABLET),
          const Breakpoint(start: 1201, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      debugShowCheckedModeBanner: false,
      title: 'Lakshay Ahlawat',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: Colors.black,
      ),
      home: SingleChildScrollView(
        child: SizedBox(
            height: MediaQuery.of(context).size.height * 1.1,
            child: const SelectionArea(child: HomeScreen())),
      ),
    );
  }
}