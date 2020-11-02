import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({
    Key key,
    this.child,
    this.width,
    this.height,
  }) : super(key: key);

  final Widget child;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(12.0),
      // margin: EdgeInsets.only(right: 8.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: child,
    );
  }
}
