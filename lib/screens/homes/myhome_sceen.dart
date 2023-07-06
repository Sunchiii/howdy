import 'package:flutter/material.dart';
import 'package:howdy/screens/homes/detail.dart';
import 'package:howdy/screens/homes/home_card.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var myList = <Map>[
    {
      "title": "How to stay productive!",
      "subtitle": "Productive, Focus, Exercise",
      "image_path": "assets/images/productive.png"
    },
    {
      "title": "How to deal with fear!",
      "subtitle": "Focus, Overcome, Brain Training",
      "image_path": "assets/images/fear.png"
    },
    {
      "title": "Dizzy and Vomit!",
      "subtitle": "Medicine, Care, Observe",
      "image_path": "assets/images/sick.png"
    },
    {
      "title": "Self love is the best love!",
      "subtitle": "Productive, Focus, Exercise",
      "image_path": "assets/images/selfLove.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 84, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: const Text(
              "Hi Mameelyn,",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: const Text("Let us know how was your day going!"),
          ),
          SizedBox(
            width: 345,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Detail()));
                    },
                    child: HomeCard(
                      title: myList[index]["title"],
                      subtitle: myList[index]["subtitle"],
                      image_path: myList[index]["image_path"],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
