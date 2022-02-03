import 'package:flutter/material.dart';
import '../layout/NavBar.dart';
import '../card/CardFormPage.dart';

class DetailApprovalPage extends StatelessWidget {
  const DetailApprovalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: false,
            snap: false,
            expandedHeight: 200,
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
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            args.nama,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 120),
                              color: Color.fromARGB(255, 228, 238, 255),
                              height: 100,
                            ),
                          ],
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
                      children: [CardFormPage()],
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

class ScreenArguments {
  final String nama;
  final String pic;

  ScreenArguments(this.nama, this.pic);
}
