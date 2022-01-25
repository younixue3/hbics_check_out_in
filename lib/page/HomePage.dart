import 'package:flutter/material.dart';

import '../card/CardRecentPermission.dart';
import '../card/CardListPermission.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [CardRecentlyPermission(), CardListPermissions()],
          ),
        ),
      ],
    );
  }
}
