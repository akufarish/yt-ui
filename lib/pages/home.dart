import 'package:flutter/material.dart';
import 'package:youtube/components/bottom_nav.dart';
import 'package:youtube/components/thumbnail.dart';
import 'package:youtube/components/top_nav.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        appBar: const PrimaryNav(),
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 24, 24, 24),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
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
