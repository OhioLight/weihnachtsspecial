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
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 140, 206, 177),
                  Color.fromARGB(255, 13, 137, 93),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 30,
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
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          width: 320,
          height: 140,
          decoration: BoxDecoration(
            image: DecorationImage(
              scale: 0.5,
              alignment: Alignment.bottomRight,
              image: AssetImage(image1),
            ),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ],
    );
  }
}
