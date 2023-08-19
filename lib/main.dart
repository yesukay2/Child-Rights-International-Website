import 'package:criweb/aboutPage.dart';
import 'package:criweb/blogPage.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Child Rights International',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const HomePage(),
      //   '/about': (context) => const AboutPage(),
      //   '/blog': (context) => const BlogPage(),
      // },
    );
  }
}
