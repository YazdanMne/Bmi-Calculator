import 'package:flutter/material.dart';

class right_shape extends StatelessWidget {
  final double width;
  const right_shape({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '+',
          style: TextStyle(
            fontSize: 25,
            color: Color(0xff7286D3),
          ),
        ),
        SizedBox(width: 5),
        Container(
          width: width,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xffE5E0FF),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              bottomLeft: Radius.circular(100),
            ),
          ),
        ),
      ],
    );
  }
}

class left_shape extends StatelessWidget {
  final double width;
  const left_shape({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xffE5E0FF),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
          ),
        ),
        SizedBox(width: 5),
        Text(
          '-',
          style: TextStyle(
            fontSize: 25,
            color: Color(0xff7286D3),
          ),
        ),
      ],
    );
  }
}
