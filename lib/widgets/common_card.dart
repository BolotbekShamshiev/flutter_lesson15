// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'package:lesson15_practice/models/user_model.dart';
import 'package:lesson15_practice/widgets/common_text2.dart';

class CommonCard extends StatelessWidget {
  final String fullName;
  final String imageUrl;
  final String phoneNumber;

  const CommonCard({
    Key? key,
    required this.fullName,
    required this.imageUrl,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 64,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 42,
            height: 42,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              fullName,
              maxLines: 2,
              style: TextStyle(
                color: Color(0xff2C2C2C),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              _onPhoneCall(
                context: context,
                phoneNumber: phoneNumber,
                fullName: fullName,
              );
            },
            icon: Icon(
              Icons.phone,
              size: 24,
              color: Color(0xff36CD72),
            ),
          ),
        ],
      ),
    );
  }
}

_onPhoneCall({
  required BuildContext context,
  required String phoneNumber,
  required String fullName,
}) {
  showModalBottomSheet(
    context: context,
    builder: (dialogContext) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Позвонить',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            Text(
              fullName,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            UserDetailCard(
              title: 'телефон основной',
              phoneNumber: '+996702345678',
              hasButton: true,
              onTap: () async => _callNumber(phoneNumber),
            ),
            SizedBox(height: 20),
            UserDetailCard(
              title: 'телефон рабочий',
              phoneNumber: '+996702345678',
              hasButton: true,
              onTap: () async => _callNumber(phoneNumber),
            ),
            SizedBox(height: 20),
            UserDetailCard(
              title: 'телефон WhatsApp',
              phoneNumber: '+996702345678',
              hasButton: true,
              onTap: () async => _callNumber(phoneNumber),
            ),
          ],
        ),
      );
    },
  );
}

class UserDetailCard extends StatelessWidget {
  final String phoneNumber;
  final bool hasButton;
  final Function()? onTap;
  final String title;

  const UserDetailCard({
    Key? key,
    required this.phoneNumber,
    this.hasButton = false,
    this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xffA8A8A8),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                phoneNumber,
                style: TextStyle(
                  color: Color(0xff2C2C2C),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        if (hasButton)
          IconButton(
            onPressed: onTap,
            icon: Icon(Icons.phone, color: Colors.green,),
          ),
      ],
    );
  }
}

_callNumber(String phoneNumber) async {
  await FlutterPhoneDirectCaller.callNumber(phoneNumber);
}
