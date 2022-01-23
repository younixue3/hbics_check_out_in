import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Color.fromARGB(255, 38, 77, 161)),
          scaffoldBackgroundColor: Color.fromARGB(255, 228, 238, 255)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: false,
            snap: false,
            expandedHeight: 230,
            flexibleSpace: FlexibleSpaceBar(
              background: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 10),
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.menu,
                              color: Color.fromARGB(255, 228, 238, 255)),
                        ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Hi, Mr Iswahyudi Rahman",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 120),
                              color: Color.fromARGB(255, 228, 238, 255),
                              height: 40,
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 80),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Card(
                                    color: Color.fromARGB(255, 247, 185, 23),
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Wrap(
                                        spacing: 15,
                                        children: [
                                          IconButton(
                                            splashColor: Colors.white54,
                                            splashRadius: 32,
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.stacked_line_chart,
                                              color: Colors.white,
                                              size: 28,
                                            ),
                                          ),
                                          IconButton(
                                            splashColor: Colors.white54,
                                            splashRadius: 32,
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.menu_book,
                                              color: Colors.white38,
                                              size: 28,
                                            ),
                                          ),
                                          IconButton(
                                            splashColor: Colors.white54,
                                            splashRadius: 32,
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.food_bank,
                                              color: Colors.white38,
                                              size: 28,
                                            ),
                                          ),
                                          IconButton(
                                            splashColor: Colors.white54,
                                            splashRadius: 32,
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.stacked_line_chart,
                                              color: Colors.white38,
                                              size: 28,
                                            ),
                                          ),
                                          IconButton(
                                            splashColor: Colors.white54,
                                            splashRadius: 32,
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.stacked_line_chart,
                                              color: Colors.white38,
                                              size: 28,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
            height: 1000,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    reverse: false,
                    enableInfiniteScroll: false,
                    aspectRatio: 0.5,
                    pageViewKey: PageStorageKey<String>('carousel_slider'),
                  ),
                  items: [
                    Container(
                      child: Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              width: 500,
                              height: 150,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                              width: 250,
                                              child: Text('Sholat Jumat',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ]),
                                      IconButton(
                                        padding: EdgeInsets.all(0),
                                        constraints:
                                            BoxConstraints(maxHeight: 20),
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.help,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text('Approved',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white)),
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      )),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Color.fromARGB(255, 247, 185, 23),
                                        // Colors.redAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 500,
                            width: 500,
                            margin: EdgeInsets.only(top: 10),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                padding: EdgeInsets.all(15),
                                child: Wrap(
                                  runSpacing: 10,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 240, 240, 240),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 150,
                                                      child: Text(
                                                        "Istirahat ad asd asda sda d",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Thursday, January 2022",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '123',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'Lexend',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_up_rounded,
                                                color: Colors.green,
                                                size: 40,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 240, 240, 240),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(right: 5),
                                                  height: 45,
                                                  width: 45,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end:
                                                          Alignment.bottomRight,
                                                      colors: [
                                                        Colors.purple,
                                                        Colors.blue
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Icon(
                                                    Icons.shopping_cart,
                                                    size: 30,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Order",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      "This Day",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '123',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'Lexend',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_up_rounded,
                                                color: Colors.green,
                                                size: 40,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 240, 240, 240),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(right: 5),
                                                  height: 45,
                                                  width: 45,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end:
                                                          Alignment.bottomRight,
                                                      colors: [
                                                        Colors.purple,
                                                        Colors.blue
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Icon(
                                                    Icons.shopping_cart,
                                                    size: 30,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Order",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      "This Day",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '123',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'Lexend',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_up_rounded,
                                                color: Colors.green,
                                                size: 40,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 240, 240, 240),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(right: 5),
                                                  height: 45,
                                                  width: 45,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end:
                                                          Alignment.bottomRight,
                                                      colors: [
                                                        Colors.purple,
                                                        Colors.blue
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Icon(
                                                    Icons.shopping_cart,
                                                    size: 30,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Order",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      "This Day",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '123',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'Lexend',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_up_rounded,
                                                color: Colors.green,
                                                size: 40,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      child: Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              width: 500,
                              height: 150,
                              padding: EdgeInsetsDirectional.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.greenAccent,
                                      Colors.indigo,
                                    ]),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Outlet Balikpapan Baru',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontFamily: "Lexend"),
                                      ),
                                      IconButton(
                                        padding: EdgeInsets.all(0),
                                        constraints:
                                            BoxConstraints(maxHeight: 20),
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.help,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Rp. ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 28,
                                            fontFamily: "Lexend",
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '1.544.600',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 28,
                                            fontFamily: "Lexend",
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down_rounded,
                                        color: Colors.redAccent,
                                        size: 40,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 500,
                            width: 500,
                            margin: EdgeInsets.only(top: 10),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                padding: EdgeInsets.all(15),
                                child: Wrap(
                                  runSpacing: 10,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 240, 240, 240),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(right: 5),
                                                  height: 45,
                                                  width: 45,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end:
                                                          Alignment.bottomRight,
                                                      colors: [
                                                        Colors.greenAccent,
                                                        Colors.purpleAccent
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Icon(
                                                    Icons.shopping_cart,
                                                    size: 30,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Order",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      "This Day",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '123',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'Lexend',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_up_rounded,
                                                color: Colors.green,
                                                size: 40,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 240, 240, 240),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(right: 5),
                                                  height: 45,
                                                  width: 45,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end:
                                                          Alignment.bottomRight,
                                                      colors: [
                                                        Colors.greenAccent,
                                                        Colors.purpleAccent
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Icon(
                                                    Icons.shopping_cart,
                                                    size: 30,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Order",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      "This Day",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '123',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'Lexend',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_up_rounded,
                                                color: Colors.green,
                                                size: 40,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 240, 240, 240),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(right: 5),
                                                  height: 45,
                                                  width: 45,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end:
                                                          Alignment.bottomRight,
                                                      colors: [
                                                        Colors.greenAccent,
                                                        Colors.purpleAccent
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Icon(
                                                    Icons.shopping_cart,
                                                    size: 30,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Order",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      "This Day",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '123',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'Lexend',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_up_rounded,
                                                color: Colors.green,
                                                size: 40,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 240, 240, 240),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(right: 5),
                                                  height: 45,
                                                  width: 45,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end:
                                                          Alignment.bottomRight,
                                                      colors: [
                                                        Colors.greenAccent,
                                                        Colors.purpleAccent
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Icon(
                                                    Icons.shopping_cart,
                                                    size: 30,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Order",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      "This Day",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'Lexend',
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '123',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'Lexend',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_up_rounded,
                                                color: Colors.green,
                                                size: 40,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
