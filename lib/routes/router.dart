import 'package:flutter/material.dart';

import '../page/FormPage.dart';
import '../page/HomePage.dart';
import '../page/ApprovalPage.dart';
import '../page/DetailApprovalPage.dart';

class Routers {
  static var dataRouter = {
    '/': (context) => HomePage(),
    '/formPage': (context) => FormPage(),
    '/formAprroval': (context) => ApprovalPage(),
    '/detailApproval': (context) => DetailApprovalPage(),
  };
}
