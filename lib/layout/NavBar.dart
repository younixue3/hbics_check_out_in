import 'package:flutter/material.dart';
import '../page/FormPage.dart';
import '../routes/router.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final AppRouter = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Color.fromARGB(255, 247, 185, 23),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Wrap(
                spacing: 30,
                children: [
                  IconButton(
                    splashColor: Colors.white54,
                    splashRadius: 32,
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  IconButton(
                    splashColor: Colors.white54,
                    splashRadius: 32,
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/formPage',
                      );
                    },
                    icon: Icon(
                      Icons.drive_file_rename_outline_rounded,
                      color: Colors.white60,
                      size: 28,
                    ),
                  ),
                  IconButton(
                    splashColor: Colors.white54,
                    splashRadius: 32,
                    onPressed: () {},
                    icon: Icon(
                      Icons.list_rounded,
                      color: Colors.white60,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
