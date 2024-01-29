import 'package:flutter/material.dart';

class PrimaryNav extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryNav({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 24, 24, 24),
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image(
                image: AssetImage("asset/img/yt.png"),
                width: 20,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                "YouTube",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.video_call_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
