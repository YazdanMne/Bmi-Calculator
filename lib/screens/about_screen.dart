import 'package:adivery/adivery.dart';
import 'package:adivery/adivery_ads.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  void initState() {
    super.initState();
    AdiveryPlugin.initialize('e6e809b4-074f-4627-aee7-26c5448825dd');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF2F2),
      body: Column(
        children: [
          const CostumAppBar(),
          const SizedBox(height: 60),
          Image.asset(
            'images/bmi.png',
            width: 200,
          ),
          const SizedBox(height: 110),
          const Text(
            'Made by Yazdan',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 60),
          const Text(
            'Social Media',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  const url = "https://www.instagram.com/yazdan.dev/";
                  final Uri _url = Uri.parse(url);

                  await launchUrl(_url, mode: LaunchMode.externalApplication);
                },
                child: Image.asset(
                  'images/ins.png',
                  width: 70,
                ),
              ),
              const SizedBox(width: 25),
              InkWell(
                onTap: () async {
                  const url = "https://t.me/mobile_developer_yazdan/";
                  final Uri _url = Uri.parse(url);

                  await launchUrl(_url, mode: LaunchMode.externalApplication);
                },
                child: Image.asset(
                  'images/telegram.png',
                  width: 70,
                ),
              ),
              const SizedBox(width: 25),
              InkWell(
                onTap: () async {
                  const url =
                      "https://www.linkedin.com/in/yazdan-manouchehri-406b47237/";
                  final Uri _url = Uri.parse(url);

                  await launchUrl(_url, mode: LaunchMode.externalApplication);
                },
                child: Image.asset(
                  'images/linkedin.png',
                  width: 70,
                ),
              ),
            ],
          ),
          const Spacer(),
          BannerAd(
            '6f0810e4-8b61-45d3-a7c7-a28d5fa84d80',
            BannerAdSize.BANNER,
            onAdLoaded: (ad) {},
            onAdClicked: (ad) {},
          ),
        ],
      ),
    );
  }
}

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: const BoxDecoration(
          color: Color(0xffFFF2F2),
          // color: Colors.amber,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
            ),
            const Text(
              'About',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.info_outline),
            ),
          ],
        ),
      ),
    );
  }
}
