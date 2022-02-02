import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../component/ListStaff.dart';

class DataListStaff with ChangeNotifier {
  var ArrStaff = {
    {
      'image': '57774948_2440392989306240_790466375524024320_n.jpg',
      'name': 'Ricko Tiaka',
      'position': 'Web Developer',
      'status': false
    },
    {
      'image': '57774948_2440392989306240_790466375524024320_n.jpg',
      'name': 'Ricko Tiaka',
      'position': 'Web Developer',
      'status': false
    }
  };
}

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
              child: Column(children:  <Widget>[
                for (var item in DataListStaff().ArrStaff) ListStaff(item['image'], item['name'], item['position'], item['status'])
              ]
                // children: [
                //   for (var item in DataListStaff().ArrStaff)
                //     ListStaff(
                //       '',
                //       '',
                //       '',
                //       true,
                //     )
                  // ListStaff(
                  //     '57774948_2440392989306240_790466375524024320_n.jpg',
                  //     'Ricko Tianaka',
                  //     'Web Developer',
                  //     true),
                  // ListStaff(
                  //     '57774948_2440392989306240_790466375524024320_n.jpg',
                  //     'Rikhi Angry',
                  //     'Graphic Designer',
                  //     false),
                  // ListStaff(
                  //     '57774948_2440392989306240_790466375524024320_n.jpg',
                  //     'Ryan Dzul',
                  //     'Video Editor',
                  //     true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
