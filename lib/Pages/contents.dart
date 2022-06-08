import 'package:flutter/material.dart';
import 'package:otus_lessons/Styles/text_style.dart';

class Contents extends StatelessWidget {
  const Contents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: const Text('СОДЕРЖАНИЕ'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green[200],
        padding: EdgeInsets.only(top: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/page1');
                },
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Text('1. Об обязанности совершения умры',
                        style: BookTextStyle.contentsText()),
                  ),
                )),
            Divider(
              thickness: 1,
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/page2');
                },
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Text(
                      '2. Сколько раз необходимо совершить умру',
                      style: BookTextStyle.contentsText(),
                    ),
                  ),
                )),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 13),
                child: Text(
                  '3. Об обязанности покаяться от грехов',
                  style: BookTextStyle.contentsText(),
                ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Container(
              child: Text(''),
            ),
            Divider(
              thickness: 3,
            ),
          ],
        ),
      ),
    );
  }
}
