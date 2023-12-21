import 'package:flutter/material.dart';

class BtnBackView extends StatelessWidget {
  const BtnBackView(
      {super.key,
      required this.image1,
      required this.name1,
      required this.name2,
      required this.description});
  final String image1;
  final String description;
  final String name1;
  final String name2;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            width: 320,
            height: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage(image1),
                ),
                borderRadius: BorderRadius.circular(40),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 120, 181, 158),
                    Color.fromARGB(255, 59, 121, 89)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
          ),
        ),
        Positioned(
          top: 10,
          left: 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: const TextStyle(
                    height: 2,
                    fontFamily: 'SF',
                    fontSize: 16,
                    color: Colors.white70),
              ),
              Text(
                '$name1\n$name2',
                style: const TextStyle(
                    height: 1.1,
                    fontFamily: 'SF',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
