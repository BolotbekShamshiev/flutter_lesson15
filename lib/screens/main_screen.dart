import 'package:flutter/material.dart';
import 'package:lesson15_practice/models/user_model.dart';
import 'package:lesson15_practice/screens/detail_screen.dart';
import 'package:lesson15_practice/widgets/common_card.dart';
import 'package:lesson15_practice/widgets/common_image.dart';
import 'package:lesson15_practice/widgets/common_text.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _Screen1State();
}

class _Screen1State extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        centerTitle: false,
        title: Text(
          'Сотрудники',
          style: TextStyle(
            color: Color(0xff2C2C2C),
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: ListView(
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.all(16),
        children: [
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
          SizedBox(
            height: 60,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: birthdayList.length,
              itemBuilder: (context, index) {
                return InkWell(
                    highlightColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            userModel: birthdayList[index],
                          ),
                        ),
                      );
                    },
                    child: CommonImage(imageUrl: birthdayList[index].imageUrl));
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 20);
              },
            ),
          ),
          SizedBox(height: 20),
          CommonText(
            title: 'У кого завтра день рождение',
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 60,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: tomorrowBirthdayList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  highlightColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          userModel: tomorrowBirthdayList[index],
                        ),
                      ),
                    );
                  },
                  child: CommonImage(
                      imageUrl: tomorrowBirthdayList[index].imageUrl),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 20);
              },
            ),
          ),
          SizedBox(height: 20),
          CommonText(
            title: 'Все сотрудники',
          ),
          SizedBox(height: 20),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: employeeList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          userModel: employeeList[index],
                        ),
                      ),
                    );
                  },
                child: CommonCard(
                    fullName: employeeList[index].fullName,
                    imageUrl: employeeList[index].imageUrl,
                    phoneNumber: employeeList[index].phoneNumber ?? ''),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 20);
            },
          ),
        ],
      ),
    );
  }
}
