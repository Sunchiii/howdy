import 'package:flutter/material.dart';
import 'package:howdy/main.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Detail extends StatefulWidget {
  String? title;
  String? subtitle;
  String? image_path;
  String? wordTitle;
  Detail(
      {super.key, this.title, this.subtitle, this.image_path, this.wordTitle});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'qMTUGJ6cDuk',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            Center(
              child: Container(
                width: 345,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: YoutubePlayer(
                  controller: _controller,
                ),
              ),
            ),
            const Text(
              "How to stay productive!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text("Productive, Focus, Exercise"),
            Container(
              margin: const EdgeInsets.only(top: 16, bottom: 24),
              child:
                  Text("${context.watch<MoodData>().getAllMoods[0].moodTitle}"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, bottom: 24),
              child: const Text(
                  "I was so sick when teacher called me to come over school and give me a chance of presentation I was so sick when teacher called me to come over school and give me a chance of presentation I was so sick when teacher called me to come over school and give me a chance of presentation I was so sick when teacher called me to come over school and give me a chance of presentation I was so sick when teacher called me to come over school and give me a chance of presentation..."),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                "Related contents",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: const Color(0xFFFFD561),
                  child: Container(
                      margin: const EdgeInsets.all(12),
                      child: const Image(
                          image: AssetImage("assets/images/fear.png"))),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: const Color(0xFFFFD561),
                  child: Container(
                      margin: const EdgeInsets.all(12),
                      child: const Image(
                          image: AssetImage("assets/images/fear.png"))),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: const Color(0xFFFFD561),
                  child: Container(
                      margin: const EdgeInsets.all(12),
                      child: const Image(
                          image: AssetImage("assets/images/fear.png"))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
