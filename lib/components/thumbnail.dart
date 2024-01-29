import 'package:flutter/material.dart';

class Thumbnail extends StatelessWidget {
  const Thumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        child: TextButton(
          onPressed: () {},
          child: Column(
            children: [
              const Image(
                image: AssetImage("asset/img/thumbnail.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: const Image(
                            image: AssetImage("asset/img/lys.png"),
                            width: 35,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          "Persona 3 Reload",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    const Icon(
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
