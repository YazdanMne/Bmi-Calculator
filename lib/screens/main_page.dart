// ignore_for_file: unused_element

import 'package:bmi/widgets/app_bar.dart';
import 'package:bmi/widgets/charts.dart';
import 'package:bmi/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:adivery/adivery.dart';
import 'package:adivery/adivery_ads.dart';

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

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  double resultBmi = 0;
  String resultText = 'you\'r Result';
  double widthGood = 150;
  double widthBad = 150;
  @override
  void initState() {
    super.initState();
    AdiveryPlugin.initialize('e6e809b4-074f-4627-aee7-26c5448825dd');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffFFF2F2),
      drawer: NavBar(),
      body: Column(
        children: [
          const AppHeader(),
          const SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('weight'),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: 140,
                        child: TextField(
                          controller: weightController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2,
                                color: Color(0xff7286D3),
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                width: 2,
                                color: Color(0xff7286D3),
                              ),
                            ),
                            hintText: '60',
                            hintStyle: const TextStyle(
                              color: Color(0xffA7A7A7),
                              fontSize: 20,
                            ),
                          ),
                          style: const TextStyle(
                            color: Color(0xff7286D3),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('height'),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: 140,
                        child: TextField(
                          controller: heightController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2,
                                color: Color(0xff7286D3),
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                width: 2,
                                color: Color(0xff7286D3),
                              ),
                            ),
                            hintText: '1.40',
                            hintStyle: const TextStyle(
                              color: Color(0xffA7A7A7),
                              fontSize: 20,
                            ),
                          ),
                          style: const TextStyle(
                            color: Color(0xff7286D3),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 330,
                height: 70,
                child: SizedBox(
                  height: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: const Color(0xff7286D3),
                    ),
                    onPressed: () {
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      final weight = double.parse(weightController.text);
                      final height = double.parse(heightController.text);
                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                      setState(() {
                        resultBmi = weight / (height * height);
                        if (resultBmi > 25) {
                          widthBad = 300;
                          widthGood = 50;
                          resultText = 'You are overweight';
                        } else if (resultBmi >= 8.5 && resultBmi <= 25) {
                          widthBad = 50;
                          widthGood = 300;
                          resultText = 'You\'r weight is normal';
                        } else {
                          widthBad = 50;
                          widthGood = 50;
                          resultText = 'You need to gain weight';
                        }
                      });
                    },
                    child: const Text(
                      'Calculate',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 65),
              right_shape(
                width: widthGood,
              ),
              const SizedBox(height: 10),
              left_shape(
                width: widthBad,
              ),
              const SizedBox(height: 40),
              const Text(
                'Calculation of positive and negative body mass index\n'
                '   Read the article and general information in the app\n'
                '            View videos and related sports in the app',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 220,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffE5E0FF),
                      Color(0xff8EA7E9),
                      Color(0xff7286D3),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(140),
                    topRight: Radius.circular(140),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${resultText}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFFF2F2),
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'You\'r Bmi :  ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFF2F2),
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '${resultBmi.toStringAsFixed(2)}',
                            style: const TextStyle(
                              color: Color(0xffFFF2F2),
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 36,
                child: BannerAd(
                  '6f0810e4-8b61-45d3-a7c7-a28d5fa84d80',
                  BannerAdSize.BANNER,
                  onAdLoaded: (ad) {},
                  onAdClicked: (ad) {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
