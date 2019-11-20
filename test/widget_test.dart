
import 'package:day_33_morning_challenge_curve/main.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart';


void main() {

  //tests for rahul
//  Curve myCurve = Curves.ease;
  CustomCurve testCurve = CustomCurve();
//  print(myCurve.transform(0.5));

  test("Testing Custom curve 1 - should pass", (){
    expect(testCurve.transform(0.0), 0.0);
  });

  test("Testing Custom curve 2 - should pass", (){
    expect(testCurve.transformInternal(0.2), 0.0);
  });

  test("Testing Custom curve 3 - should pass", (){
    expect(testCurve.transform(0.6), 0.0);
  });

  test("Testing Custom curve 3 - should pass", (){
    expect(testCurve.transformInternal(1.0), 0.0);
  });

  test("Testing Custom curve 4 - should fail", (){

    expect(testCurve.transform(0.4), 1.0);
  });

  test("Testing Custom curve 4 - should fail", (){
    expect(testCurve.transform(0.3), Curves.ease.transform(0.5));
  });

  test("Testing Custom curve 4 - should fail", (){
    expect(testCurve.transform(0.25), Curves.ease.transform(0.25));
  });

  test("Testing Custom curve 4 - should fail", (){
    expect(testCurve.transform(0.35), Curves.ease.transform(0.75));
  });

 

  test("Testing Custom curve 4 - should fail", (){
    expect(testCurve.transform(0.45), Curves.decelerate.transform(0.75));
  });


}
