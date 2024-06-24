// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lesson15_practice/screens/detail_screen.dart';

class CommonImage extends StatelessWidget {
  final String imageAddress;

  const CommonImage({
    Key? key,
    required this.imageAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailScreen()),
        );
      },
      child: Image.asset(
        imageAddress,
        width: 60,
        height: 60,
      ),
    );
  }
}
