import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/model.dart';
import 'package:store/page_one.dart';
import 'package:store/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Data(),
        builder: (context, child) {

          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: PageOne(),
          );

        });
  }
}