import 'package:flutter/material.dart';
import 'package:weihnachtsspecial/Pages/widgets/assist/button_back_view.dart';

class SecondRow extends StatelessWidget {
  const SecondRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Row(
          children: [
            BtnBackView(
                image1: 'assets/illustrations/santa.png',
                name1: 'Festive',
                name2: 'Ornaments',
                description: 'Home Supply'),
            SizedBox(
              width: 25,
            ),
            BtnBackView(
                image1: 'assets/illustrations/sleigh.png',
                name1: 'Christmas',
                name2: 'Presents',
                description: 'Gift of Giving'),
            SizedBox(
              width: 25,
            ),
            BtnBackView(
                image1: 'assets/illustrations/snowball.png',
                name1: 'Seasonal',
                name2: 'Decoration',
                description: 'Home Supplys'),
            SizedBox(
              width: 25,
            ),
            BtnBackView(
                image1: 'assets/illustrations/glove.png',
                name1: 'Perfect',
                name2: 'Outfits',
                description: 'Clothing'),
            SizedBox(
              width: 25,
            ),
            BtnBackView(
                image1: 'assets/illustrations/party.png',
                name1: 'Accessoires',
                name2: 'for NYE',
                description: 'Clothing'),
          ],
        ),
      ),
    );
  }
}
