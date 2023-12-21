import 'package:flutter/material.dart';
import 'package:weihnachtsspecial/Pages/widgets/assist/button_front_view.dart';

class FirstRow extends StatelessWidget {
  const FirstRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Row(
          children: [
            BtnFrontView(
                image1: 'assets/illustrations/yule_cake.png',
                name1: 'Yule Log',
                name2: 'Cake'),
            SizedBox(
              width: 25,
            ),
            BtnFrontView(
                image1: 'assets/illustrations/mince_pie.png',
                name1: 'Grandmas',
                name2: 'Mince Pie'),
            SizedBox(
              width: 25,
            ),
            BtnFrontView(
                image1: 'assets/illustrations/cup_cake.png',
                name1: 'Christmas',
                name2: 'Muffin'),
            SizedBox(
              width: 25,
            ),
            BtnFrontView(
                image1: 'assets/illustrations/gingerbread_man.png',
                name1: 'Gingerbread',
                name2: 'man'),
          ],
        ),
      ),
    );
  }
}
