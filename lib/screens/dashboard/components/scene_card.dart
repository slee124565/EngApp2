import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'common_card.dart';

class SceneCard extends StatelessWidget {
  const SceneCard({
    Key key,
    this.sceneName,
    this.activated: false,
  }) : super(key: key);

  final bool activated;
  final String sceneName;

  @override
  Widget build(BuildContext context) {
    return CommonCard(
      width: 160.0,
      height: 68.0,
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 16.0,
                  top: 10.0,
                  bottom: 10.0,
                  right: 12.0,
                ),
                child: SizedBox(
                  width: 48.0,
                  height: 48.0,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(colors: [
                        Colors.white.withOpacity(1.0),
                        activated
                            ? kSceneActivatedRingColor
                            : kSceneDeactivatedRingColor,
                      ], stops: [
                        0.9,
                        1
                      ]),
                    ),
                    child: ImageIcon(
                      AssetImage('assets/icons/scene.png'),
                      // color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 23.0, bottom: 23.0),
                child: Text(
                  sceneName,
                  style: kHeaderTextStyle,
                ),
              )
            ],
          ),
          Positioned(
            top: 8.0,
            right: 8.0,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: activated
                    ? kSceneActivatedDotColor
                    : kSceneDeactivatedDotColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
