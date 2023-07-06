import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailMood extends StatelessWidget {
  String? image;
  String? title;
  String? subtitle;
  String? dayNumber;
  String? dayText;
  String? month;
  String? year;
  DetailMood(
      {super.key,
      this.image,
      this.title,
      this.subtitle,
      this.dayNumber,
      this.dayText,
      this.month,
      this.year});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Row(
              children: [
                Icon(Icons.arrow_left),
                Text(
                  "History",
                  style: TextStyle(fontSize: 12),
                )
              ],
            )),
        Text("$dayNumber $month $year"),
        Container(
            width: 160,
            margin: const EdgeInsets.symmetric(vertical: 24),
            child: Image(width: 160, height: 160, image: AssetImage("$image"))),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 14),
          child: Text(
            "I'm so $title",
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "$subtitle",
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          ),
        )
      ]),
    );
  }
}
