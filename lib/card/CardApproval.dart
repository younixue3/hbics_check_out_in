import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CardApproval extends StatefulWidget {
  const CardApproval({Key? key}) : super(key: key);

  @override
  _CardApprovalState createState() => _CardApprovalState();
}

class _CardApprovalState extends State<CardApproval> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Color.fromARGB(255, 20, 50, 88),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
                width: 300,
                padding: EdgeInsetsDirectional.all(5),
                child: Column(
                  children: [
                    Text(
                      'Ricko Tiaka',
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      height: 40,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          reverse: false,
                          enableInfiniteScroll: false,
                          pageViewKey:
                              PageStorageKey<String>('carousel_slider'),
                        ),
                        items: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/public/57774948_2440392989306240_790466375524024320_n.jpg'))),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
