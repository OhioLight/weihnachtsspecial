import 'package:flutter/material.dart';
import 'package:weihnachtsspecial/widgets/button_front_view.dart';
import 'package:weihnachtsspecial/widgets/buttton_back_view.dart';

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
        backgroundColor: const Color.fromARGB(255, 198, 226, 248),
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
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/illustrations/branch_BG.png',
              ),
            ),
          ),
          child: SafeArea(
            left: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.favorite)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22)),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.search),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 25),
                      const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const ClipOval(
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Image(
                            image: AssetImage('assets/illustrations/kai.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Pastries',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SF'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                    '5 Delicacies available',
                    style: TextStyle(
                        color: Colors.grey, fontSize: 20, fontFamily: 'SF'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Row(
                      children: [
                        BtnFrontView(
                            image1: 'assets/illustrations/yule_cake.png',
                            name1: 'Yule Log',
                            name2: 'Cake'),
                        SizedBox(
                          width: 25,
                        ),
                        BtnFrontView(
                            image1: 'assets/illustrations/mince_pie.png',
                            name1: 'Grandmas',
                            name2: 'Mince Pie'),
                        SizedBox(
                          width: 25,
                        ),
                        BtnFrontView(
                            image1: 'assets/illustrations/cup_cake.png',
                            name1: 'Christmas',
                            name2: 'Muffin'),
                        SizedBox(
                          width: 25,
                        ),
                        BtnFrontView(
                            image1: 'assets/illustrations/gingerbread_man.png',
                            name1: 'Gingerbread',
                            name2: 'man'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Explore Christmas',
                    style: TextStyle(
                        fontFamily: 'SF',
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SingleChildScrollView(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
