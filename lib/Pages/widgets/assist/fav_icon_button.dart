import 'package:flutter/material.dart';

class FavIconBtn extends StatefulWidget {
  const FavIconBtn({super.key});

  @override
  State<FavIconBtn> createState() => _FavIconBtnState();
}

class _FavIconBtnState extends State<FavIconBtn> {
  bool isActive = false;

  void toggleState() {
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: IconButton(
          onPressed: () {
            toggleState();
          },
          icon: Icon(
            isActive ? Icons.favorite : Icons.heart_broken,
            color: isActive ? Colors.pink : Colors.black,
          )),
    );
  }
}
