// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CommonText3 extends StatelessWidget {
  final String title;
  final Color? color;

  const CommonText3({
    Key? key,
    required this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xff2C2C2C),
          ),
        ),
        Spacer(),
        Icon(
          Icons.phone,
          color: color ?? Colors.white,
        )
      ],
    );
  }
}
