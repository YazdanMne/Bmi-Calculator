import 'package:bmi/screens/about_screen.dart';
import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double? screenHeight = SizeConfig.screenHeight;
// 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight!;
}

// Get the proportionate width as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double? screenWidth = SizeConfig.screenWidth;
// 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth!;
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: double.infinity,
            height: 235,
            decoration: const BoxDecoration(
              color: Color(0xff7286D3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset(
                      'images/bmi.png',
                      cacheWidth: 70,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'BMI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 220),
                  child: Text(
                    'V 1.0.0',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Image.asset(
              'images/icons/vedios.png',
              width: 30,
            ),
            title: Row(
              children: const [
                Text('Vedios '),
                Text(
                  '(Coming Soon)',
                  style: TextStyle(
                    fontSize: 11,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ],
            ),
            onTap: (() => null),
          ),
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 1,
              color: const Color(0xffDFDFDF),
            ),
          ),
          //
          ListTile(
            leading: Image.asset(
              'images/icons/doc.png',
              width: 30,
            ),
            title: Row(
              children: const [
                Text('Documents '),
                Text(
                  '(Coming Soon)',
                  style: TextStyle(
                    fontSize: 11,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ],
            ),
            onTap: (() => null),
          ),
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 1,
              color: const Color(0xffDFDFDF),
            ),
          ),
          //
          ListTile(
            leading: Image.asset(
              'images/icons/sport.png',
              width: 30,
            ),
            title: Row(
              children: const [
                Text('Sports '),
                Text(
                  '(Coming Soon)',
                  style: TextStyle(
                    fontSize: 11,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ],
            ),
            onTap: (() => null),
          ),
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 1,
              color: const Color(0xffDFDFDF),
            ),
          ),
          //
          ListTile(
            leading: Image.asset(
              'images/icons/about.png',
              width: 30,
            ),
            title: const Text('About'),
            onTap: (() => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AboutPage(),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
