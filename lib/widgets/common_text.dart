// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String title;
  final Color? color;

  const CommonText({
    Key? key,
    required this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color ?? Color(0xff2C2C2C),
        fontSize: 16,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
