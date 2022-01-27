import 'package:flutter/material.dart';

class CardFormPage extends StatefulWidget {
  const CardFormPage({Key? key}) : super(key: key);

  @override
  _CardFormPageState createState() => _CardFormPageState();
}

class _CardFormPageState extends State<CardFormPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: 500,
        height: 200,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 73, 114, 209),
                Color.fromARGB(255, 38, 77, 161),
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment:
                  //   MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent permission',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: "Lexend"),
                    ),
                    Container(
                      width: 200,
                      child: Text('Sholat Jumat',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                // IconButton(
                //   padding: EdgeInsets.all(0),
                //   constraints:
                //       BoxConstraints(maxHeight: 20),
                //   onPressed: () {},
                //   icon: Icon(
                //     Icons.help,
                //     color: Colors.white,
                //   ),
                // ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 5,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          right: 5,
                        ),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/public/57774948_2440392989306240_790466375524024320_n.jpg'))),
                      ),
                      Text('Mr. Is')
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Approved',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 247, 185, 23),
                      // Colors.redAccent,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  splashColor: Colors.white54,
                  disabledColor: Colors.white38,
                  splashRadius: 32,
                  iconSize: 35,
                  color: Colors.white,
                  icon: Icon(
                    Icons.qr_code_scanner_sharp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
