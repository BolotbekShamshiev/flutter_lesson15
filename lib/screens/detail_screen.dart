import 'package:flutter/material.dart';
import 'package:lesson15_practice/widgets/common_text2.dart';
import 'package:lesson15_practice/widgets/common_text3.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/ava1.png',
                  width: 114,
                  height: 114,
                ),
                SizedBox(height: 20),
                Text(
                  'Жыпаркулов Мырзабек Жыпаркулович',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Генеральный директор',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff3B81EA),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText2(title: 'Направление'),
                CommonText3(title: 'Дирекция управления'),
                SizedBox(height: 30),
                CommonText2(title: 'Отдел'),
                CommonText3(title: 'Отдел управления'),
                SizedBox(height: 30),
                CommonText2(title: 'Email'),
                CommonText3(title: 'mjyparkulov@gosecotech.kg'),
                SizedBox(height: 30),
                CommonText2(title: 'Дата рождения'),
                CommonText3(title: '16.09.1972'),
                SizedBox(height: 30),
                CommonText2(title: 'Телефон основной'),
                CommonText3(
                  title: '+996702345678',
                  color: Color(0xff36CD72),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
