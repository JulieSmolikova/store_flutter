import 'package:flutter/material.dart';

class Data extends ChangeNotifier {

  List items = [
    ['Apple', 13, 'apples.jpg',],
    ['Banana', 25, 'bananas.jpg',],
    ['Melon', 30, 'melons.jpg',],
    ['Orange', 15, 'oranges.jpg',],
    ['Tomato', 18, 'tomatos.jpg',],
  ];

  //basket
  List basket = [];

  void addToBasket(int index){
    basket.add(items[index]);
    notifyListeners();
    print(basket);
  }

  //delete
  void remove(int index) {
    basket.removeAt(index);
    notifyListeners();
  }

  //calculate
  int totalPrice = 0;

  String calculatePrice() {
    int totalPrice = 0;
    for (int i = 0; i < basket.length; i++) {
      totalPrice += int.parse(basket[i][1].toString());
    }
    return totalPrice.toString();
  }

}