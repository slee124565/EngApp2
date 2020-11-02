import 'package:flhtek_eng_app_2/screens/dashboard/components/common_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';

class SensorValueCard extends StatelessWidget {
  const SensorValueCard({
    Key key,
    this.place,
    this.value,
    this.imgAssetName,
  }) : super(key: key);
  final int value;
  final String place;
  final String imgAssetName;

  @override
  Widget build(BuildContext context) {
    return CommonCard(
      width: 80.0,
      height: 104.0,
      child: SensorCardContent(
        imgAssetName: imgAssetName,
        value: value,
        place: place,
      )
    );
  }
}

class SensorCardContent extends StatelessWidget {
  const SensorCardContent({
    Key key,
    @required this.imgAssetName,
    @required this.value,
    @required this.place,
  }) : super(key: key);

  final String imgAssetName;
  final int value;
  final String place;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // FaIcon(
        //   // FontAwesomeIcons.thermometerHalf,
        //   imgAssetName,
        //   size: 28.0,
        // ),
        ImageIcon(
          AssetImage(imgAssetName),
          size: 28.0,
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Text(
          "$value",
          style: kValueCardValueTextStyle,
        ),
        Text(
          '$place',
          style: kValueCardPlaceTextStyle,
        )
      ],
    );
  }
}
