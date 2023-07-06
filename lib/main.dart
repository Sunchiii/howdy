// ignore: unnecessary_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:howdy/screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MoodData(),
        ),
      ],
      child: const Main(),
    ));

class Moods {
  String? moodTitle;
  String? subsitle;
  String? imageAddress;
  String? dayNumber;
  String? dayText;
  String? month;
  String? year;
  // ignore: no_leading_underscores_for_local_identifiers
  Moods(String _moodTitle, String _subtitle, String _imageAddress,
      String _dayNumber, String _dayText, String _month, String _year) {
    moodTitle = _moodTitle;
    subsitle = _subtitle;
    imageAddress = _imageAddress;
    dayNumber = _dayNumber;
    dayText = _dayText;
    month = _month;
    year = _year;
  }
}

class MoodData with ChangeNotifier, DiagnosticableTreeMixin {
  List<Moods> moods = [
    Moods(
        "productive",
        "I was so sick when teacher called me to come over school and give me a chance of presentation",
        "assets/images/productive.png",
        "22",
        "SUN",
        "jan",
        "2023"),
  ];

  // get all data
  List<Moods> get getAllMoods => moods;

  // add data
  void pushMoodData(String title, String subtitle, String image,
      String dayNumber, String dayText, String month, String year) {
    Moods mood = Moods(title, subtitle, image, dayNumber, dayText, month, year);
    moods.add(mood);
    notifyListeners();
  }

  /// Makes `moods` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty("moods", moods.toString()));
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Login()),
    );
  }
}
