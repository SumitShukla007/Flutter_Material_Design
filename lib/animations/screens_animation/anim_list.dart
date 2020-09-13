import 'package:flutter/material.dart';
import 'package:materialdesignflutter/models/curve_type.dart';

List<CurveType> curveType = [];

class AnimList {
  static getCurveList() {
    curveType.clear();
    curveType.add(CurveType(curveName: 'BounceIn', curveType: Curves.bounceIn));
    curveType.add(CurveType(curveName: 'BounceInOut', curveType: Curves.bounceInOut));
    curveType.add(CurveType(curveName: 'BounceOut', curveType: Curves.bounceOut));
    curveType.add(CurveType(curveName: 'Decelerate', curveType: Curves.decelerate));
    curveType.add(CurveType(curveName: 'Ease', curveType: Curves.ease));
    curveType.add(CurveType(curveName: 'EaseIn', curveType: Curves.easeIn));
    curveType.add(CurveType(curveName: 'EaseInBack', curveType: Curves.easeInBack));
    curveType.add(CurveType(curveName: 'EaseInCirc', curveType: Curves.easeInCirc));
    curveType.add(CurveType(curveName: 'EaseInCubic', curveType: Curves.easeInCubic));
    curveType.add(CurveType(curveName: 'EaseInExpo', curveType: Curves.easeInExpo));
    curveType.add(CurveType(curveName: 'EaseInOut', curveType: Curves.easeInOut));
    curveType.add(CurveType(curveName: 'EaseInOutBack', curveType: Curves.easeInOutBack));
    curveType.add(CurveType(curveName: 'EaseInOutCirc', curveType: Curves.easeInOutCirc));
    curveType.add(CurveType(curveName: 'EaseInOutCubic', curveType: Curves.easeInOutCubic));
    curveType.add(CurveType(curveName: 'EaseInOutExpo', curveType: Curves.easeInOutExpo));
    curveType.add(CurveType(curveName: 'EaseInOutQuad', curveType: Curves.easeInOutQuad));
    curveType.add(CurveType(curveName: 'EaseInOutQuart', curveType: Curves.easeInOutQuart));
    curveType.add(CurveType(curveName: 'EaseInOutQuint', curveType: Curves.easeInOutQuint));
    curveType.add(CurveType(curveName: 'EaseInOutSine', curveType: Curves.easeInOutSine));
    curveType.add(CurveType(curveName: 'EaseInQuad', curveType: Curves.easeInQuad));
    curveType.add(CurveType(curveName: 'EaseInQuart', curveType: Curves.easeInQuart));
    curveType.add(CurveType(curveName: 'EaseInQuint', curveType: Curves.easeInQuint));
    curveType.add(CurveType(curveName: 'EaseInSine', curveType: Curves.easeInSine));
    curveType.add(CurveType(curveName: 'EaseInToLinear', curveType: Curves.easeInToLinear));
    curveType.add(CurveType(curveName: 'EaseOut', curveType: Curves.easeOut));
    curveType.add(CurveType(curveName: 'EaseOutBack', curveType: Curves.easeOutBack));
    curveType.add(CurveType(curveName: 'EaseOutCubic', curveType: Curves.easeOutCubic));
    curveType.add(CurveType(curveName: 'EaseOutExpo', curveType: Curves.easeOutExpo));
    curveType.add(CurveType(curveName: 'EaseOutQuad', curveType: Curves.easeOutQuad));
    curveType.add(CurveType(curveName: 'EaseOutQuart', curveType: Curves.easeOutQuart));
    curveType.add(CurveType(curveName: 'EaseOutQuint', curveType: Curves.easeOutQuint));
    curveType.add(CurveType(curveName: 'EaseOutSine', curveType: Curves.easeOutSine));
    curveType.add(CurveType(curveName: 'ElasticIn', curveType: Curves.elasticIn));
    curveType.add(CurveType(curveName: 'ElasticInOut', curveType: Curves.elasticInOut));
    curveType.add(CurveType(curveName: 'ElasticOut', curveType: Curves.elasticOut));
    curveType.add(CurveType(curveName: 'FastLinearToSlowEaseIn', curveType: Curves.fastLinearToSlowEaseIn));
    curveType.add(CurveType(curveName: 'FastOutSlowIn', curveType: Curves.fastOutSlowIn));
    curveType.add(CurveType(curveName: 'Linear', curveType: Curves.linear));
    curveType.add(CurveType(curveName: 'LinearToEaseOut', curveType: Curves.linearToEaseOut));
    curveType.add(CurveType(curveName: 'SlowMiddle', curveType: Curves.slowMiddle));

    return curveType;
  }
}
