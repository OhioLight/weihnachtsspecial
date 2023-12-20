import 'package:flutter/material.dart';
import 'package:weihnachtsspecial/widgets/drawer_button.dart';
import 'package:weihnachtsspecial/widgets/drawer_text.dart';

class ListViewDraw extends StatelessWidget {
  const ListViewDraw({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
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
            color1: Color.fromARGB(255, 158, 165, 194),
            color2: Color.fromARGB(255, 60, 86, 148),
            buttontext: 'Home',
            buttonimage: 'assets/illustrations/house.png',
          ),
        ),
        ListTile(
            contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            title: DrawerBtn(
              color1: Color.fromARGB(255, 134, 200, 146),
              color2: Color.fromARGB(255, 54, 138, 73),
              buttontext: 'Gifts',
              buttonimage: 'assets/illustrations/gift.png',
            )),
        ListTile(
            contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            title: DrawerBtn(
              color1: Color.fromARGB(255, 207, 139, 139),
              color2: Color.fromARGB(255, 125, 5, 5),
              buttontext: 'Home',
              buttonimage: 'assets/illustrations/stars.png',
            )),
        ListTile(
            contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            title: DrawerBtn(
              color1: Color.fromARGB(255, 240, 211, 66),
              color2: Color.fromARGB(255, 252, 138, 0),
              buttontext: 'Home',
              buttonimage: 'assets/illustrations/ bauble.png',
            )),
        SizedBox(
          height: 300,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
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
