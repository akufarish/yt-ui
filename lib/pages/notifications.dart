import 'package:flutter/material.dart';
import 'package:youtube/components/bottom_nav.dart';
import 'package:youtube/components/top_nav.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        appBar: const PrimaryNav(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 24, 24, 24),
          ),
        ),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}
