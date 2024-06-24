// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CommonText2 extends StatelessWidget {
  final String title;

  const CommonText2({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xffA8A8A8),
      ),
    );
  }
}
