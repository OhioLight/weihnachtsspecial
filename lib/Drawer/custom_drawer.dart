import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weihnachtsspecial/Drawer/widgets/list_view_drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 7.0,
            sigmaY: 7.0,
          ),
          child: Container(
            color: const Color.fromARGB(255, 255, 154, 147).withOpacity(0.3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Drawer(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(45),
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 210, 233, 252),
            width: MediaQuery.of(context).size.width - 60,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/illustrations/candy_BG.png',
                  ),
                ),
              ),
              child: const ListViewDraw(),
            ),
          ),
        ),
      ],
    );
  }
}
