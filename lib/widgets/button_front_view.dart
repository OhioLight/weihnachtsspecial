import 'package:flutter/material.dart';

class BtnFrontView extends StatelessWidget {
  const BtnFrontView(
      {super.key,
      required this.image1,
      required this.name1,
      required this.name2});
  final String image1;

  final String name1;
  final String name2;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 280,
          height: 350,
          color: Colors.transparent,
          child: Center(
            child: Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    alignment: Alignment.bottomRight,
                    image: AssetImage(image1),
                  ),
                  borderRadius: BorderRadius.circular(45),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 148, 174, 204),
                      Color.fromARGB(255, 46, 73, 112)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
            ),
          ),
        ),
        Positioned(
          top: 70,
          left: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Holiday Delicacies',
                style: TextStyle(
                    fontFamily: 'SF', fontSize: 16, color: Colors.white70),
              ),
              Text(
                name1,
                style: const TextStyle(
                    height: 1,
                    fontFamily: 'SF',
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                name2,
                style: const TextStyle(
                    fontFamily: 'SF',
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        ),
        Positioned(
          left: 190,
          top: 0,
          child: Image.asset(
            'assets/illustrations/mini_star.png',
            width: 90,
            height: 90,
          ),
        )
      ],
    );
  }
}
