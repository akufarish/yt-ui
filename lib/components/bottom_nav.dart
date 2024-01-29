import 'package:flutter/material.dart';
import 'package:youtube/pages/home.dart';
import 'package:youtube/pages/notifications.dart';
import 'package:youtube/pages/profile.dart';
import 'package:youtube/pages/subscriptions.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 24, 24, 24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BottomNavIcon(
            label: "Home",
            icon: Icons.home_outlined,
            screen: const Home(),
          ),
          BottomNavIcon(label: "Shorts", icon: Icons.phone_android_outlined),
          BottomNavIcon(
              label: "Subscriptions",
              icon: Icons.folder_outlined,
              screen: const Subscriptions()),
          BottomNavIcon(
            label: "Notifications",
            icon: Icons.notifications_outlined,
            screen: const Notifications(),
          ),
          BottomNavIcon(
              label: "You",
              icon: Icons.person_outlined,
              screen: const Profile()),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class BottomNavIcon extends StatelessWidget {
  BottomNavIcon(
      {super.key, required this.label, required this.icon, this.screen});

  String label;
  IconData icon;
  Widget? screen;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 50,
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return screen!;
              }));
            },
            child: Column(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
