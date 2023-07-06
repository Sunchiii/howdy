import 'package:flutter/material.dart';
import 'package:howdy/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 146, bottom: 24),
                child: Column(
                  children: [
                    Text(
                      "Howdy",
                      style: GoogleFonts.breeSerif(
                          fontSize: 67, fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      "How's your day?",
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFF2F2F2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                    )
                  ],
                ),
                child: Container(
                  child: const SizedBox(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone_in_talk_sharp),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 24,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFF2F2F2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                    )
                  ],
                ),
                child: const SizedBox(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.key_off),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                width: 88,
                height: 51,
                margin: const EdgeInsets.only(top: 24),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF224B6C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: const Text("Login"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  "for got password?",
                  style: TextStyle(
                    color: Color(0xFF47A1D8),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50, bottom: 10),
                      child: const Text("or"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              Container(
                                width: 64,
                                height: 64,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.facebook,
                                  size: 40,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  "Login with \n facebook",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              Container(
                                width: 64,
                                height: 64,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.phone_in_talk_sharp,
                                  size: 40,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  "Login with \n Phone Number",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
