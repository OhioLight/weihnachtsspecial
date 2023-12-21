import 'package:flutter/material.dart';
import 'package:weihnachtsspecial/Pages/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 226, 248),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/illustrations/branch_BG.png',
            ),
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Herzlich Willkommen \nin der besten \n Weihnachtsapp der Welt!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SF',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Bitte Melde dich an um Fortzufahren!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SF',
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'E-mail Adresse',
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Passwort',
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainPage(),
                          ));
                    },
                    child: const Text('Anmelden'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
