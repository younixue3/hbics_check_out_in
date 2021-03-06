import 'package:flutter/material.dart';

import '../layout/NavBar.dart';
import '../card/CardApproval.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

// class ListStaff {
//   bool status = false;
//   void getStaff() {
//     status = true;
//   }
// }
void main(List<String> args) async {
  var url =
      Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

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
