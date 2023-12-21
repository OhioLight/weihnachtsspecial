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
            width: 220,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.centerRight,
                  image: AssetImage(image1),
                ),
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 158, 165, 194),
                    Color.fromARGB(255, 75, 103, 168)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
          ),
        ),
        Positioned(
          top: 40,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: const TextStyle(
                    height: 1,
                    fontFamily: 'SF',
                    fontSize: 13,
                    color: Colors.white70),
              ),
              Text(
                '$name1\n$name2',
                style: const TextStyle(
                    height: 1,
                    fontFamily: 'SF',
                    fontSize: 18,
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
