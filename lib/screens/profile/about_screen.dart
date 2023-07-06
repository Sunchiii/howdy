import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Row(
              children: [
                Icon(Icons.arrow_left),
                  Text("profile",style: TextStyle(fontSize: 12),)
                ],
              ),
          ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 345,
                    height: 187,
                    margin: const EdgeInsets.only(top: 50),
                    child: Card(
                      elevation: 8,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(33),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 40),
                              child: const Text("Savath Saypadith",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: const Text(
                                "Professor",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                                ),
                              ),
                            ),
                            Container(
                              child: const Text(
                                "ຂໍໃຈແລກເບີໂທໄດ້ບໍ່ລ່ະ?",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 10,color: Colors.white),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          offset: const Offset(0, 0),
                          blurRadius: 20,
                          spreadRadius: 3
                        )
                      ]
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/svat.jpeg"),
                    ),
                  ),
                ),
              ],
            ),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 345,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(top: 12,bottom: 12,left:16,right: 16),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 60,
                                height: 60,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/productive.png"),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 16),
                                child: const Column(
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: Text("Phetphailin Muendouang",style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                    SizedBox(
                                      width: 200,
                                      child: Text("4COM2 Student"))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 345,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(top: 12,bottom: 12,left:16,right: 16),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 60,
                                height: 60,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/productive.png"),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 16),
                                child: const Column(
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: Text("Lasun vongveodee",style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                    SizedBox(
                                      width: 200,
                                      child: Text("4COM2 Student",textAlign: TextAlign.start,))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
