import 'package:flutter/material.dart';
import 'package:youtube/components/bottom_nav.dart';
import 'package:youtube/components/thumbnail.dart';
import 'package:youtube/components/top_nav.dart';

class Subscriptions extends StatelessWidget {
  const Subscriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        appBar: const PrimaryNav(),
        body: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 24, 24, 24)),
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (var i = 0; i < 10; i++) const Subscriber(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                for (var i = 0; i < 10; i++) const Thumbnail(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}

class Subscriber extends StatelessWidget {
  const Subscriber({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const Image(
              image: AssetImage("asset/img/lys.png"),
              width: 55,
            ),
          ),
        ),
        const Text(
          "LTG",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
