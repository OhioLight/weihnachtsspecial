import 'package:flutter/material.dart';
import 'package:weihnachtsspecial/Pages/widgets/assist/fav_icon_button.dart';
import 'package:weihnachtsspecial/Pages/widgets/assist/notif_icon_button.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 15),
      child: Row(
        children: [
          const FavIconBtn(),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 200,
            height: 40,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 4.0),
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none)),
          ),
          const SizedBox(
            width: 5,
          ),
          const Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              NotifIconBtn(),
              SizedBox(
                width: 4,
              ),
              ClipOval(
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image(
                    image: AssetImage('assets/illustrations/kai.png'),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
