import 'package:flutter/material.dart';
import 'package:howdy/screens/history/history_screen.dart';
import 'package:howdy/screens/homes/addmood.dart';
import 'package:howdy/screens/homes/myhome_sceen.dart';
import 'package:howdy/screens/profile/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const MyHome(),
        const History(),
        const Profile(),
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.history,
            ),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_outline,
            ),
            label: "",
          ),
        ],
      ),
      floatingActionButton: Visibility(
        visible: currentPageIndex != 1 ? false : true,
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF224B6C),
          child: const Icon(
            Icons.add,
          ),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(24))),
                builder: (context) {
                  return const AddMood();
                });
          },
        ),
      ),
    );
  }
}
