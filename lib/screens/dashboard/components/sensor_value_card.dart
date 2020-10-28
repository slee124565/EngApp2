import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';

class SensorValueCard extends StatelessWidget {
  const SensorValueCard({
    Key key,
    this.place,
    this.value,
    this.iconData,
  }) : super(key: key);
  final int value;
  final String place;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(12.0),
      // margin: EdgeInsets.only(right: 8.0),
      width: 80.0,
      height: 104.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            // FontAwesomeIcons.thermometerHalf,
            iconData,
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
      ),
    );
  }
}