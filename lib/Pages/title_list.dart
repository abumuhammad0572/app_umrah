import 'package:flutter/material.dart';

class TitleList extends StatelessWidget {
  const TitleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 150),
        alignment: Alignment.center,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'ОБРЯДЫ УМРЫ',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Image(image: AssetImage('images/kaaba.jpg')),
              SizedBox(
                height: 50,
              ),
              Text(
                'В СВЕТЕ КОРАНА И СУННЫ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
