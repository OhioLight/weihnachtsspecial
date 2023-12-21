import 'package:flutter/material.dart';

class NotifIconBtn extends StatefulWidget {
  const NotifIconBtn({super.key});

  @override
  State<NotifIconBtn> createState() => _NotifIconBtnState();
}

class _NotifIconBtnState extends State<NotifIconBtn> {
  bool isActive = false;

  void toggleState() {
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        toggleState();
      },
      icon: Icon(
        isActive ? Icons.notifications : Icons.notifications_off,
        color: isActive ? Colors.yellow : Colors.white,
      ),
    );
  }
}
