import 'package:flutter/material.dart';
import 'package:weihnachtsspecial/widgets/drawer_button.dart';
import 'package:weihnachtsspecial/widgets/drawer_text.dart';
import 'package:weihnachtsspecial/widgets/list_view_drawer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 250, 255),
        drawer: SafeArea(
          child: Drawer(
              backgroundColor: const Color.fromARGB(255, 244, 250, 255),
              elevation: 5,
              width: MediaQuery.of(context).size.width - 60,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/illustrations/candy_BG.png',
                      )),
                ),
                child: const ListViewDraw(),
              )),
        ),
        body: 
      ),
      );
    
  }
}
