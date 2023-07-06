import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardMood extends StatelessWidget {
  String? dayNumber;
  String? dayText;
  String? subtitle;
  String? image;
  CardMood(
      {super.key, this.dayNumber, this.dayText, this.subtitle, this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345,
      height: 84,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$dayNumber",
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "$dayText",
                    style: const TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(12),
              child: Text(
                "$subtitle",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )),
            Container(
              padding: const EdgeInsets.all(12),
              child: Image(
                image: AssetImage("$image"),
                width: 48,
                height: 48,
              ),
            )
          ],
        ),
      ),
    );
  }
}
