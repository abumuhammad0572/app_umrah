import 'package:flutter/material.dart';
import 'package:otus_lessons/Pages/page1.dart';
import 'package:otus_lessons/Pages/structure.dart';
import 'package:otus_lessons/Pages/title_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/title': (context) => const TitleList(),
        '/structure': (context) => const BookStructure(),
        '/page1': (context) => const Page1(),
      },
      initialRoute: '/structure',
    );
  }
}
