import 'package:flutter/material.dart';
import 'package:howdy/main.dart';
import 'package:howdy/screens/history/card_mood.dart';
import 'package:howdy/screens/history/detail_screen.dart';
import 'package:provider/provider.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_circle_left_outlined)),
                const Text("24 May 2023"),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_circle_right_outlined)),
              ],
            ),
          ),
          SizedBox(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: context.watch<MoodData>().getAllMoods.length,
                itemBuilder: (context, index) {
                  return TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailMood(
                            image: context
                                .watch<MoodData>()
                                .getAllMoods[index]
                                .imageAddress,
                            title: context
                                .watch<MoodData>()
                                .getAllMoods[index]
                                .moodTitle,
                            subtitle: context
                                .watch<MoodData>()
                                .getAllMoods[index]
                                .subsitle,
                            dayNumber: context
                                .watch<MoodData>()
                                .getAllMoods[index]
                                .dayNumber,
                            dayText: context
                                .watch<MoodData>()
                                .getAllMoods[index]
                                .dayText,
                            month: context
                                .watch<MoodData>()
                                .getAllMoods[index]
                                .month,
                            year: context
                                .watch<MoodData>()
                                .getAllMoods[index]
                                .year,
                          );
                        }));
                      },
                      child: CardMood(
                        dayNumber: context
                            .watch<MoodData>()
                            .getAllMoods[index]
                            .dayNumber,
                        dayText: context
                            .watch<MoodData>()
                            .getAllMoods[index]
                            .dayText
                            ?.toUpperCase(),
                        subtitle: context
                            .watch<MoodData>()
                            .getAllMoods[index]
                            .subsitle,
                        image: context
                            .watch<MoodData>()
                            .getAllMoods[index]
                            .imageAddress,
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
