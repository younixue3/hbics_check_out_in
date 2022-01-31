import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'layout/NavBar.dart';
import 'page/HomePage.dart';
import 'page/FormPage.dart';
import 'routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // navigatorKey: Routers.appRouter,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Color.fromARGB(255, 38, 77, 161)),
          scaffoldBackgroundColor: Color.fromARGB(255, 228, 238, 255)),
      // home: const MyHomePage(),
      routes: Routers.dataRouter,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final AppRouter = Routers.appRouter;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             floating: false,
//             pinned: false,
//             snap: false,
//             expandedHeight: 230,
//             flexibleSpace: FlexibleSpaceBar(
//               background: Wrap(
//                 crossAxisAlignment: WrapCrossAlignment.end,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(right: 20, left: 10),
//                     margin: EdgeInsets.only(top: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               image: DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                       'assets/public/57774948_2440392989306240_790466375524024320_n.jpg'))),
//                         )
//                       ],
//                     ),
//                   ),
//                   Container(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 20),
//                           child: Text(
//                             "Hi, Mr Iswahyudi Rahman",
//                             style: TextStyle(
//                               fontSize: 25,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w300,
//                             ),
//                             textAlign: TextAlign.left,
//                           ),
//                         ),
//                         Stack(
//                           children: [
//                             Container(
//                               margin: EdgeInsets.only(top: 120),
//                               color: Color.fromARGB(255, 228, 238, 255),
//                               height: 100,
//                             ),
//                             NavBar()
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // flexibleSpace:
//           ),
//           SliverToBoxAdapter(
//             child: Container(
//               height: 800,
//               margin: EdgeInsets.only(top: 20),
//               padding: EdgeInsets.symmetric(horizontal: 40),
//               child: Column(
//                 children: [
//                   Container(
//                     child: Column(
//                       children: [],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
