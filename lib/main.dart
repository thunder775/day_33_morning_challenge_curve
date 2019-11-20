import 'package:flutter/material.dart';

void main() {
  print(CustomCurve().transformInternal(.35));
//  runApp(AnimatedDots());
}

class AnimatedDots extends StatefulWidget {
  @override
  _AnimatedDotsState createState() => _AnimatedDotsState();
}

class _AnimatedDotsState extends State<AnimatedDots> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CustomCurve extends Curve {
  @override
  double transformInternal(double t) {
    if (t > .2 && t <= .4) {
      return Curves.ease.transform((t-.2)*5);
    }
    if (t > .4 && t <.6) {
      print(1-((t-.4)*5));
      return Curves.decelerate.transform(1-((t-.4)*5));
    } else {
      return 0.0;
    }
  }
}
