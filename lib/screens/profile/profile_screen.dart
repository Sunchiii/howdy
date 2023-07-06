import 'package:flutter/material.dart';
import 'package:howdy/screens/profile/about_screen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 115),
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 345,
                    height: 360,
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
                              child: const Text("Mameelyn Mami",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              child: const Text(
                                "20 5753 1035",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(
                                    width: 200,
                                    child: Text("Edit Profile",textAlign: TextAlign.start,)),
                                  Icon(Icons.arrow_right)
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.notifications),
                                  SizedBox(
                                    width: 200,
                                    child: Text("Notification",textAlign: TextAlign.start,)),
                                  Icon(Icons.arrow_right)
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.lock),
                                  SizedBox(
                                    width: 200,
                                    child: Text("Policy",textAlign: TextAlign.start,)),
                                  Icon(Icons.arrow_right)
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.refresh),
                                  SizedBox(
                                    width: 200,
                                    child: Text("Reset History",textAlign: TextAlign.start,)),
                                  Icon(Icons.arrow_right)
                                ],
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
                      backgroundImage: AssetImage("assets/images/productive.png"),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 345,
                height: 80,
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33),
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const About()));
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.book),
                          SizedBox(
                            width: 200,
                            child: Text("about this app")),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
