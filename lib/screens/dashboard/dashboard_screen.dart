
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const String id = 'dashboard_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
          )
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: Image.asset(
        'assets/images/ferqo_icon_logo.png',
        height: 37.0,
        alignment: Alignment.centerLeft,
        color: Colors.white,
      ),
    );
  }
}
