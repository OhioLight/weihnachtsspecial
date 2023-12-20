import 'package:flutter/material.dart';

class DrawerBtn extends StatelessWidget {
  const DrawerBtn(
      {super.key,
      required this.color1,
      required this.color2,
      required this.buttontext,
      required this.buttonimage});
  final Color color1;
  final Color color2;
  final String buttonimage;
  final String buttontext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      buttonimage,
                    )),
                borderRadius: BorderRadius.circular(18.0),
                gradient: LinearGradient(
                  colors: [color1, color2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            buttontext,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'SF'),
          )
        ],
      ),
    );
  }
}
