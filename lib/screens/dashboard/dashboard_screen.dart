import 'dart:ui';

import 'package:flhtek_eng_app_2/constants.dart';
import 'package:flhtek_eng_app_2/screens/dashboard/components/common_card.dart';
import 'package:flutter/material.dart';

import 'components/board_sensor.dart';
import 'components/header_with_more_btn.dart';
import 'components/scene_card.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BoardSensor(),
            // Spacer(),
            HeaderWithMoreBtn(
              header: '情境.最愛',
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: sceneData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
                ),
                // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //   childAspectRatio: 0.53,
                //   crossAxisCount: 2,
                // ),
                itemBuilder: (context, index) => SceneCard(
                  activated: sceneData[index]['activated'],
                  sceneName: sceneData[index]['sceneName'],
                ),
              ),
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
      title: Column(
        children: [
          Image.asset(
            'assets/images/ferqo_icon_logo.png',
            height: 37.0,
            alignment: Alignment.centerLeft,
            color: Colors.white,
          ),
          SizedBox(
            height: 24.0,
          )
        ],
      ),
    );
  }
}


List<Map<String, dynamic>> sceneData = [
  {
    'activated': true,
    'sceneName': '到家了'
  },
  {
    'activated': false,
    'sceneName': '派對時間'
  },
  {
    'activated': false,
    'sceneName': '睡覺'
  },
  {
    'activated': false,
    'sceneName': '電影'
  },
  {
    'activated': false,
    'sceneName': '晨醒模式'
  },
  {
    'activated': false,
    'sceneName': '離開全關'
  },
];