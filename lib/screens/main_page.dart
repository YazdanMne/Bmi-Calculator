import 'package:bmi_calculator/widgets/app_bar.dart';
import 'package:bmi_calculator/widgets/charts.dart';
import 'package:bmi_calculator/widgets/costum_button.dart';
import 'package:bmi_calculator/widgets/costum_text_field.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF2F2),
      body: Column(
        children: [
          AppHeader(),
          SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('weight'),
                      SizedBox(height: 5),
                      weight_field(),
                    ],
                  ),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('height'),
                      SizedBox(height: 5),
                      height_field(),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              calculate_button(),
              SizedBox(height: 65),
              right_shape(),
              SizedBox(height: 10),
              left_shape(),
              SizedBox(height: 40),
              Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing\n'
                'Lorem ipsum dolor sit amet, consetetur sadipscing\n'
                'Lorem ipsum dolor sit amet, consetetur sadipscing',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
          Container(
            width: double.infinity,
            height: 220,
            decoration: BoxDecoration(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You\'r Bmi :  ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFF2F2),
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '21.00',
                    style: TextStyle(
                      color: Color(0xffFFF2F2),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
