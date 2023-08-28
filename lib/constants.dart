import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const stile_pink = TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Color(0xff523050));
const stile_blue = TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Color(0xff1d3f4c));
const stile_sm = TextStyle(fontFamily: 'Nunito ExtraLight', fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black);

BoxDecoration btn_small = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [KPink, KBlue],
      stops: const [0.3, 0.7],
    ),
    boxShadow: [
      BoxShadow(
          color: KTurq.withOpacity(0.4),
          offset: const Offset(2, -2),
          blurRadius: (10))]
);

BoxDecoration btn_big = BoxDecoration(
borderRadius: BorderRadius.circular(10),
gradient: LinearGradient(
begin: Alignment.topRight,
end: Alignment.bottomLeft,
colors: [KPink, KBlue, Colors.blue.shade100],
stops: const [0.2, 0.5, 0.9],
));

Color KPink = const Color(0xffd2a7d4).withOpacity(0.6);
Color KBlue = const Color(0xff8c92d8).withOpacity(0.6);
Color KTurq = const Color(0xff6199aa);