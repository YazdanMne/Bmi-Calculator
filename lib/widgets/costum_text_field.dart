import 'package:flutter/material.dart';

class weight_field extends StatefulWidget {
  const weight_field({
    Key? key,
  }) : super(key: key);

  @override
  State<weight_field> createState() => _weight_fieldState();
}

class _weight_fieldState extends State<weight_field> {
  final weightController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Color(0xff7286D3),
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              width: 2,
              color: Color(0xff7286D3),
            ),
          ),
          hintText: '60',
          hintStyle: TextStyle(
            color: Color(0xffA7A7A7),
            fontSize: 20,
          ),
        ),
        style: TextStyle(
          color: Color(0xff7286D3),
          fontSize: 20,
        ),
      ),
    );
  }
}

class height_field extends StatelessWidget {
  const height_field({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Color(0xff7286D3),
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              width: 2,
              color: Color(0xff7286D3),
            ),
          ),
          hintText: '1.40',
          hintStyle: TextStyle(
            color: Color(0xffA7A7A7),
            fontSize: 20,
          ),
        ),
        style: TextStyle(
          color: Color(0xff7286D3),
          fontSize: 20,
        ),
      ),
    );
  }
}
