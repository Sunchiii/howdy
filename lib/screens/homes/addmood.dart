import 'package:flutter/material.dart';
import 'package:howdy/main.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Mood {
  String moodTitle = "";
  String moodImage = "";
  // ignore: no_leading_underscores_for_local_identifiers
  Mood(String _moodTitle, String _moodImage) {
    moodTitle = _moodTitle;
    moodImage = _moodImage;
  }

  String get getMoodTitle => moodTitle;
}

class CurMood {
  String moodTitle = "";
  String moodImage = "";
  String subtitle = "";
  DateTime createdAt = DateTime.now();
  // ignore: no_leading_underscores_for_local_identifiers
  CurMood(String _moodTitle, String _moodImage, String _subtitle) {
    moodTitle = _moodTitle;
    moodImage = _moodImage;
    subtitle = _subtitle;
  }

  String get getImage => moodImage;
  String get getTitle => moodTitle;
  String get getSubtitle => subtitle;
}

class AddMood extends StatefulWidget {
  const AddMood({super.key});

  @override
  State<AddMood> createState() => _AddMoodState();
}

class _AddMoodState extends State<AddMood> {
  TextEditingController textarea = TextEditingController();
  // Create a DateTime object.

  String toDay = DateFormat.yMMMMd().format(DateTime.now());
  String dayNumber = DateFormat.d().format(DateTime.now());
  String dayText = DateFormat.E().format(DateTime.now());
  String month = DateFormat.LLL().format(DateTime.now());
  String year = DateFormat.y().format(DateTime.now());

  List<Mood> moods = [
    Mood("self love", "assets/images/selfLove.png"),
    Mood("productive", "assets/images/productive.png"),
    Mood("fear", "assets/images/fear.png"),
    Mood("sick", "assets/images/sick.png"),
  ];

  CurMood currentMood =
      CurMood("productive!", "assets/images/productive.png", "");

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.black,
                )),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // IconButton(
                //     onPressed: () {},
                //     icon: const Icon(Icons.arrow_circle_left_outlined)),
                Text(toDay),
                // IconButton(
                //     onPressed: () {},
                //     icon: const Icon(Icons.arrow_circle_right_outlined)),
              ],
            ),
          ),
          const Text(
            "I'm so",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            currentMood.getTitle,
            style: const TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image(
            width: 160,
            height: 160,
            image: AssetImage(currentMood.getImage),
          ),
          SizedBox(
            width: 345,
            height: 103,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {
                    setState(() {
                      currentMood.moodTitle = moods[index].getMoodTitle;
                      currentMood.moodImage = moods[index].moodImage;
                    });
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Container(
                      margin: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Image(
                              width: 55,
                              height: 55,
                              image: AssetImage(moods[index].moodImage)),
                          Text(
                            moods[index].moodTitle,
                            style: const TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: moods.length,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Color(0xFFF2F2F2),
            ),
            child: TextField(
              controller: textarea,
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(12),
                hintText: "Tell us..",
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 99,
            height: 51,
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF224B6C),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)))),
              onPressed: () {
                context.read<MoodData>().pushMoodData(
                    currentMood.getTitle,
                    textarea.text,
                    currentMood.getImage,
                    dayNumber,
                    dayText,
                    month,
                    year);

                Navigator.pop(context);
              },
              child: const Text("Submit"),
            ),
          )
        ],
      ),
    );
  }
}
