import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListStaff extends StatelessWidget {
  // const ListStaff({Key? key}) : super(key: key);
  final String image;
  final String name;
  final String position;
  final bool status;
  ListStaff(this.image, this.name, this.position, this.status);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          overlayColor:
              MaterialStateProperty.all(Color.fromARGB(50, 73, 114, 209)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))),
      onPressed: () {},
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/public/' + image))),
            ),
            Container(
              width: 220,
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.name,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Text(
                    position,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  )
                ],
              ),
            ),
            Container(
              width: 40,
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class ListStaff extends StatefulWidget {
//   // const ListStaff({Key? key}) : super(key: key);
//   final String image;
//   final String name;
//   final String position;
//   final bool status;

//   ListStaff(this.image, this.name, this.position, this.status);

//   @override
//   _ListStaffState createState() => _ListStaffState();
// }

// class _ListStaffState extends State<ListStaff> {
//   // final String image;
//   // final String name;
//   // final String position;
//   // final bool status;
//   // ListStaff(this.image, this.name, this.position, this.status);
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       style: ButtonStyle(
//           overlayColor:
//               MaterialStateProperty.all(Color.fromARGB(50, 73, 114, 209)),
//           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))),
//       onPressed: () {},
//       child: Container(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               width: 50,
//               height: 50,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(80),
//                   image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: AssetImage('assets/public/' + image))),
//             ),
//             Container(
//               width: 220,
//               margin: EdgeInsets.only(left: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     this.name,
//                     style: TextStyle(fontSize: 18, color: Colors.black),
//                   ),
//                   Text(
//                     position,
//                     style: TextStyle(fontSize: 14, color: Colors.black),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               width: 40,
//               margin: EdgeInsets.only(left: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Icon(
//                     Icons.check_circle,
//                     color: Colors.green,
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// class ListStaff extends StatelessWidget {
//   // const ListStaff({Key? key, title, image}) : super(key: key);
//   final String image;
//   final String name;
//   final String position;
//   late bool status;
//   ListStaff(this.image, this.name, this.position, this.status);

//   @override
//   Widget build(BuildContext context) {}
// }
