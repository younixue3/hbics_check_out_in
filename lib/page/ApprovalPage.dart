import 'package:flutter/material.dart';

import '../layout/NavBar.dart';
import '../card/CardApproval.dart';

import 'package:carousel_slider/carousel_slider.dart';

class ApprovalPage extends StatelessWidget {
  const ApprovalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: false,
            snap: false,
            expandedHeight: 50,
            flexibleSpace: FlexibleSpaceBar(
              background: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 10),
                    margin: EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // IconButton(
                        //   onPressed: () {},
                        //   icon: Icon(Icons.menu,
                        //       color: Color.fromARGB(255, 228, 238, 255)),
                        // ),
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
                  ),
                ],
              ),
            ),
            // flexibleSpace:
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 800,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [CardApproval()],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
