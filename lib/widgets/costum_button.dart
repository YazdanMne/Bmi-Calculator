import 'package:flutter/material.dart';

class calculate_button extends StatelessWidget {
  const calculate_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 70,
      child: SizedBox(
        height: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Color(0xff7286D3),
          ),
          onPressed: () {},
          child: Text(
            'Calculate',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
