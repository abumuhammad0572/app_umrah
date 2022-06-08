import 'package:flutter/material.dart';
import 'package:otus_lessons/Pages/contents.dart';
import 'package:otus_lessons/Pages/title_list.dart';

class BookStructure extends StatelessWidget {
  const BookStructure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          TitleList(),
          Contents(),
        ],
      ),
    );
  }
}
