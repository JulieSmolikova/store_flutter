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

  //calculate
  int totalPrice = 0;

  String calculatePrice() {
    int totalPrice = 0;
    for (int i = 0; i < basket.length; i++) {
      totalPrice += int.parse(basket[i][1].toString());
    }
    return totalPrice.toString();
  }

  //delete
  void remove(int index) {
    basket.removeAt(index);
    notifyListeners();
  }

  //model_window_delete
  Future deleteItem(int index, context){
    return showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.15,
            padding: const EdgeInsets.symmetric(vertical: 14),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.8),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              )
            ),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  remove(index);
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.delete_forever,
                  color: Colors.deepOrangeAccent,
                  size: 40,
                ),
              ),
            ),
          );
        });
  }

}