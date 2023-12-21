import 'package:flutter/material.dart';
import 'package:weihnachtsspecial/Drawer/widgets/drawer_button.dart';
import 'package:weihnachtsspecial/Drawer/widgets/drawer_text.dart';

class ListViewDraw extends StatelessWidget {
  const ListViewDraw({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        ListTile(
            contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            title: DrawerText()),
        SizedBox(
          height: 30,
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          title: DrawerBtn(
            color1: Color.fromARGB(255, 173, 203, 230),
            color2: Color.fromARGB(255, 30, 77, 120),
            buttontext: 'Home',
            buttonimage: 'assets/illustrations/house.png',
          ),
        ),
        ListTile(
            contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            title: DrawerBtn(
              color1: Color.fromARGB(255, 140, 206, 177),
              color2: Color.fromARGB(255, 13, 137, 93),
              buttontext: 'Gifts',
              buttonimage: 'assets/illustrations/gift.png',
            )),
        ListTile(
            contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            title: DrawerBtn(
              color1: Color.fromARGB(255, 255, 148, 142),
              color2: Color.fromARGB(255, 159, 5, 21),
              buttontext: 'Home',
              buttonimage: 'assets/illustrations/stars.png',
            )),
        ListTile(
            contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            title: DrawerBtn(
              color1: Color.fromARGB(255, 250, 214, 74),
              color2: Color.fromARGB(255, 234, 136, 15),
              buttontext: 'Home',
              buttonimage: 'assets/illustrations/ bauble.png',
            )),
        Spacer(),
        Padding(
          padding: EdgeInsets.fromLTRB(25, 0, 0, 20),
          child: Text(
            'Log out',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'SF',
                color: Color.fromARGB(255, 134, 134, 134),
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
