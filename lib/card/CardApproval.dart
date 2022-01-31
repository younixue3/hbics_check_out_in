import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../component/ListStaff.dart';

class CardApproval extends StatefulWidget {
  const CardApproval({Key? key}) : super(key: key);

  @override
  _CardApprovalState createState() => _CardApprovalState();
}

class _CardApprovalState extends State<CardApproval> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 500,
                child: TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search...',
                  ),
                )),
          ),
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              width: 500,
              padding: EdgeInsetsDirectional.all(10),
              child: Column(
                children: [
                  ListStaff(
                      '57774948_2440392989306240_790466375524024320_n.jpg',
                      'Ricko Tianaka',
                      'Web Developer',
                      true),
                  ListStaff(
                      '57774948_2440392989306240_790466375524024320_n.jpg',
                      'Rikhi Angry',
                      'Graphic Designer',
                      false),
                  ListStaff(
                      '57774948_2440392989306240_790466375524024320_n.jpg',
                      'Ryan Dzul',
                      'Video Editor',
                      true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
