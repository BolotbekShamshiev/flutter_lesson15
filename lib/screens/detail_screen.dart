// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lesson15_practice/models/user_model.dart';
import 'package:lesson15_practice/widgets/common_text2.dart';
import 'package:lesson15_practice/widgets/common_text3.dart';

class DetailScreen extends StatelessWidget {
  final UserModel userModel;

  const DetailScreen({
    Key? key,
    required this.userModel,
  }) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  userModel.imageUrl,
                  width: 114,
                  height: 114,
                ),
                SizedBox(height: 20),
                Text(
                  userModel.fullName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  userModel.position ?? '',
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
                CommonText3(title: userModel.direction ?? ''),
                SizedBox(height: 30),
                CommonText2(title: 'Отдел'),
                CommonText3(title: userModel.department ?? ''),
                SizedBox(height: 30),
                CommonText2(title: 'Email'),
                CommonText3(title: userModel.email ?? ''),
                SizedBox(height: 30),
                CommonText2(title: 'Дата рождения'),
                CommonText3(title: userModel.dateOfBirth ?? ''),
                SizedBox(height: 30),
                CommonText2(title: 'Телефон основной'),
                CommonText3(
                  title: userModel.phoneNumber ?? '',
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
