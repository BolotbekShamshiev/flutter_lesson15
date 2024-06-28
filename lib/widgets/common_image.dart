// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CommonImage extends StatelessWidget {
  final String imageUrl;

  const CommonImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        imageUrl,
        width: 60,
        height: 60,
      
    );
  }
}
