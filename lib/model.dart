import 'package:flutter/material.dart';

class Data extends ChangeNotifier {

  List items = [
    ['Apple', 13, 'apples.jpg',],
    ['Banana', 25, 'bananas.jpg',],
    ['Melon', 30, 'melons.jpg',],
    ['Orange', 15, 'oranges.jpg',],
    ['Tomato', 18, 'tomatos.jpg',],
  ];

  List basket = [];

  void addToBasket(String index){
    basket.add(index);
    notifyListeners();
    print(basket);
  }

}