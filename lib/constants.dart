import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const stile_pink = TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Color(0xff523050));
const stile_blue = TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Color(0xff1d3f4c));
const stile_sm = TextStyle(fontFamily: 'Nunito ExtraLight', fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black);

BoxDecoration decor_box = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: const Color(0xffd2a7d4).withOpacity(0.6));

Color KPink = const Color(0xffd2a7d4).withOpacity(0.6);
Color KBlue = const Color(0xff8c92d8).withOpacity(0.6);
Color KTurq = const Color(0xff6199aa);