import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeaderWithMoreBtn extends StatelessWidget {
  const HeaderWithMoreBtn({
    Key key,
    this.header,
  }) : super(key: key);
  final String header;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          header,
          style: kHeaderTextStyle,
        ),
        Spacer(),
        RawMaterialButton(
          onPressed: () {},
          child: Icon(
            Icons.arrow_back_ios_rounded,
            size: 12.0,
          ),
          // padding: EdgeInsets.all(kDefaultPadding/4),
          shape: CircleBorder(),
          fillColor: Colors.white,
          elevation: 0.0,
          padding: EdgeInsets.zero,
          constraints: BoxConstraints.tightFor(
            width: 30.0,
            height: 30.0,
          ),
        ),
      ],
    );
  }
}
