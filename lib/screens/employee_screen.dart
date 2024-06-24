import 'package:flutter/material.dart';
import 'package:lesson15_practice/widgets/common_card.dart';
import 'package:lesson15_practice/widgets/common_image.dart';
import 'package:lesson15_practice/widgets/common_text.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _Screen1State();
}

class _Screen1State extends State<EmployeeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Сотрудники',
                style: TextStyle(
                  color: Color(0xff2C2C2C),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 24,
                    color: Color(0xff757575),
                  ),
                  labelText: 'Поиск',
                  labelStyle: TextStyle(
                    color: Color(0xff757575),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  filled: true,
                  fillColor: Color(0xffE8E8E8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffE8E8E8),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              CommonText(
                title: 'У кого сегодня день рождение',
                color: Color(0xff3B81EA),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CommonImage(imageAddress: 'assets/images/ava1.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava2.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava3.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava4.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava1.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava2.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava3.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava4.png'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CommonText(
                title: 'У кого завтра день рождение',
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CommonImage(imageAddress: 'assets/images/ava1.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava2.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava3.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava4.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava1.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava2.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava3.png'),
                    SizedBox(width: 20),
                    CommonImage(imageAddress: 'assets/images/ava4.png'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CommonText(
                title: 'Все сотрудники',
              ),
              SizedBox(height: 20),
              CommonCard(
                title: 'Жыпаркулов Мырзабек Жыпаркулович',
                avatar: 'assets/images/ava1.png',
              ),
              SizedBox(height: 20),
              CommonCard(
                title: 'Артыкбаев Расул Саткынович',
                avatar: 'assets/images/ava2.png',
              ),
              SizedBox(height: 20),
              CommonCard(
                title: 'Атамбаев Сооронбай Нуркожоевич',
                avatar: 'assets/images/ava3.png',
              ),
              SizedBox(height: 20),
              CommonCard(
                title: 'Атабеков Мирбек Атабекович',
                avatar: 'assets/images/ava4.png',
              ),
          
              SizedBox(height: 20),
              CommonCard(
                title: 'Жыпаркулов Мырзабек Жыпаркулович',
                avatar: 'assets/images/ava1.png',
              ),
              SizedBox(height: 20),
              CommonCard(
                title: 'Артыкбаев Расул Саткынович',
                avatar: 'assets/images/ava2.png',
              ),
              SizedBox(height: 20),
              CommonCard(
                title: 'Атамбаев Сооронбай Нуркожоевич',
                avatar: 'assets/images/ava3.png',
              ),
              SizedBox(height: 20),
              CommonCard(
                title: 'Атабеков Мирбек Атабекович',
                avatar: 'assets/images/ava4.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
