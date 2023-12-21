import 'package:flutter/material.dart';
import 'package:weihnachtsspecial/Drawer/custom_drawer.dart';
import 'package:weihnachtsspecial/Pages/widgets/first_row.dart';
import 'package:weihnachtsspecial/Pages/widgets/second_row.dart';
import 'package:weihnachtsspecial/Pages/widgets/top_row.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 226, 248),
      drawer: const CustomDrawer(),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/illustrations/branch_BG.png',
            ),
          ),
        ),
        child: const SafeArea(
          bottom: true,
          left: false,
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopRow(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Pastries',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SF'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                    '5 Delicacies available',
                    style: TextStyle(
                        color: Colors.grey, fontSize: 20, fontFamily: 'SF'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FirstRow(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Explore Christmas',
                    style: TextStyle(
                        fontFamily: 'SF',
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SecondRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
