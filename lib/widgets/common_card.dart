// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lesson15_practice/screens/detail_screen.dart';

class CommonCard extends StatelessWidget {
  final String title;
  final String avatar;

  const CommonCard({
    Key? key,
    required this.title,
    required this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailScreen()),
          );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        height: 64,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(
              avatar,
              width: 42,
              height: 42,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: Color(0xff2C2C2C),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            InkWell(
              child: Icon(
                Icons.phone,
                size: 24,
                color: Color(0xff36CD72),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
