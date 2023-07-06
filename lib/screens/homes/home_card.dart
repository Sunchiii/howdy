import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeCard extends StatelessWidget {
  String? title;
  String? subtitle;
  // ignore: non_constant_identifier_names
  String? image_path;
  HomeCard({super.key, this.title, this.subtitle, this.image_path});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
              color: Color(0xFF8CBBE8),
            ),
            child: Container(
              margin: const EdgeInsets.all(12),
              child: Image(
                image: AssetImage(image_path == ""
                    ? "assets/images/productive.png"
                    : "$image_path"),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Text(
                  "$title",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
                Text(
                  "$subtitle",
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
