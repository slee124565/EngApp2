import 'dart:ui';

import 'package:flhtek_eng_app_2/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/header_with_more_btn.dart';
import 'components/sensor_value_card.dart';

class DashboardScreen extends StatelessWidget {
  static const String id = 'dashboard_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            top: kDefaultPadding,
            bottom: (kDefaultPadding * 2)),
        decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
            )),
        child: Column(
          children: [
            HeaderWithMoreBtn(header: '狀態監控'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SensorValueCard(
                  place: '客廳',
                  value: 24,
                  iconData: FontAwesomeIcons.thermometerHalf,
                ),
                SensorValueCard(
                  place: '客廳',
                  value: 24,
                  iconData: FontAwesomeIcons.thermometerHalf,
                ),
                SensorValueCard(
                  place: '客廳',
                  value: 24,
                  iconData: FontAwesomeIcons.thermometerHalf,
                ),
                SensorValueCard(
                  place: '客廳',
                  value: 24,
                  iconData: FontAwesomeIcons.thermometerHalf,
                ),
              ],
            ),
          ],
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



