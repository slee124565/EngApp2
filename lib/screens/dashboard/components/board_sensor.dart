import 'package:flhtek_eng_app_2/screens/dashboard/components/sensor_value_card.dart';
import 'package:flutter/material.dart';

import 'header_with_more_btn.dart';

class BoardSensor extends StatelessWidget {
  const BoardSensor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWithMoreBtn(header: '狀態監控'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (var sensor in sensorData)
              SensorValueCard(
                place: sensor['areaName'],
                value: sensor['value'],
                imgAssetName: sensor['imgAssetName'],
              ),
          ],
        ),
      ],
    );
  }
}

List<Map<String, dynamic>> sensorData = [
  {
    "imgAssetName": 'assets/icons/temp.png',
    "value": 24,
    "areaName": "客廳",
  },
  {
    "imgAssetName": 'assets/icons/co2.png',
    "value": 110,
    "areaName": "臥室",
  },
  {
    "imgAssetName": 'assets/icons/smoke.png',
    "value": 450,
    "areaName": "主臥房‘",
  },
  {
    "imgAssetName": 'assets/icons/smoke.png',
    "value": 570,
    "areaName": "廚房",
  },
];
