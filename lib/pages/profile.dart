// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:youtube/components/bottom_nav.dart';
import 'package:youtube/components/top_nav.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        appBar: const PrimaryNav(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 24, 24, 24)),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: const Image(
                          image: AssetImage("asset/img/lys.png"),
                          width: 70,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text(
                        "Syihwan",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                          label: "Switch account", icon: Icons.person_add),
                      CustomButton(label: "Google account", icon: Icons.abc),
                      CustomButton(
                          label: "Turn on incognito",
                          icon: Icons.health_and_safety),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const History(),
                const SizedBox(
                  height: 12,
                ),
                const Playlist(),
                const SizedBox(
                  height: 15,
                ),
                CustomCard(
                    label: "Your videos", icon: Icons.video_library_outlined),
                CustomCard(label: "Downloads", icon: Icons.download_outlined),
                CustomCard(label: "Your movies", icon: Icons.movie_outlined),
                CustomCard(
                    label: "Get youtube premium",
                    icon: Icons.video_stable_outlined),
                CustomCard(
                    label: "Time watched", icon: Icons.timelapse_outlined),
                CustomCard(label: "Help & feedback", icon: Icons.help_outline),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.label,
    required this.icon,
  });

  IconData icon;
  String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: TextButton.icon(
        style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 33, 33, 33)),
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        label: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "History",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 33, 33, 33)),
                onPressed: () {},
                child: const Text(
                  "Show all",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [for (var i = 0; i < 10; i++) const CustomThumbnail()],
          ),
        )
      ],
    );
  }
}

class Playlist extends StatelessWidget {
  const Playlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Playlist",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 33, 33, 33)),
                onPressed: () {},
                child: const Text(
                  "Show all",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [for (var i = 0; i < 10; i++) const CustomThumbnail()],
          ),
        )
      ],
    );
  }
}

class CustomThumbnail extends StatelessWidget {
  const CustomThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: SizedBox(
        width: 200,
        child: TextButton(
          onPressed: () {},
          child: const Column(
            children: [
              Image(
                image: AssetImage("asset/img/thumbnail.jpg"),
                width: 150,
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Persona 3 Reload",
                          style: TextStyle(color: Colors.white),
                          softWrap: false,
                        )
                      ],
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({
    super.key,
    required this.label,
    required this.icon,
  });

  String label;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 24, 24, 24),
        ),
        height: 50,
        child: Card(
          color: const Color.fromARGB(255, 24, 24, 24),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      icon,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      label,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
