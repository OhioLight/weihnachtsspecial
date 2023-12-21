import 'package:flutter/material.dart';

class DrawerText extends StatelessWidget {
  const DrawerText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ClipOval(
          child: SizedBox(
            width: 45,
            height: 45,
            child: Image(
              image: AssetImage('assets/illustrations/kai.png'),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Christmas Kai',
              style: TextStyle(
                  fontFamily: 'SF', fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Santa`s Best Friend since 2023',
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'SF',
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
