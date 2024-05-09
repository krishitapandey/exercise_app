import 'package:exercise/constants.dart';
import 'package:exercise/widgets/SearchBar.dart';
import 'package:exercise/widgets/bottom_navBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
                color: kBluelightColor,
                image: DecorationImage(
                  image: AssetImage("assests/images/meditation_bg.png"),
                )),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text(
                  "Meditation",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
                Text(
                  "3-10 MIN Course",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: size.width * .6,
                  child: Text(
                      "Live happier and healthier by learning the fundamentals of meditation"),
                ),
                SizedBox(
                    width: size.width * .5, height: 120, child: Search_Bar()),
                Wrap(
                  spacing: 20,
                  runSpacing: 10,
                  children: [
                    SessionCard(sessionNum: 1, isDone: true, press: () {}),
                    SessionCard(sessionNum: 2, isDone: false, press: () {}),
                    SessionCard(sessionNum: 3, isDone: false, press: () {}),
                    SessionCard(sessionNum: 4, isDone: false, press: () {}),
                    SessionCard(sessionNum: 5, isDone: false, press: () {}),
                    SessionCard(sessionNum: 6, isDone: false, press: () {}),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Meditation",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(5),
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor)
                      ]),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          'assests/icons/Meditation_women_small.svg'),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Basic 2 ",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "Start your deepen your practice",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: SvgPicture.asset("assests/icons/Lock.svg"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final VoidCallback press;
  const SessionCard({
    Key? key,
    required this.sessionNum,
    required this.isDone,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, snapshot) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          //snapshot.maxWidth provides us the available width for this widget
          width: snapshot.maxWidth / 2 - 10,
          // padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 23,
                    spreadRadius: -13,
                    color: kShadowColor)
              ]),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: isDone ? kBlueColor : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: kBlueColor)),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Session $sessionNum",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
