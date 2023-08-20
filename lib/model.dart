import 'package:flutter/material.dart';
import 'package:store/constants.dart';

class Data extends ChangeNotifier {

  List items = [
    ['Cherry Blossom', 103.99, '10.png', 'Bonsai Artificial Tree', 4.8],
    ['Bamboo Artificial', 71.99, '8.png', 'Plant', 4.5],
    ['Bromeliad', 63.99, '4.png', 'with Vase Arrangement', 4.7],
    ['Mixed Areca Palm', 96.99, '5.png', 'Fern & Peacock w/Planter', 4.5],
    ['Spathiphyllum Artificial', 55.99, '3.png', 'Plant (Real Touch)', 4.9],
    ['Corn Stalk Dracaena', 196.99, '2.png', 'Silk Plant (Real Touch)', 4.2],
    ['Bromeliad Artificial Plant', 81.99, '1.png', 'in Stoneware Planter', 4.8],
    ['Croton Artificial', 90.99, '6.png', 'Plant (Real Touch)', 4.0],
    ['Cymbidium Orchid', 96.99, '7.png', 'Artificial Plant', 4.9],
    ['Tropical Bromeliad', 63.99, '9.png', 'in Angled Vase', 4.5],
    ['Boxwood Ball', 99.99, '11.png', 'Topiary', 4.8],
    ['Cedar Bonsai', 88.99, '12.png', 'Silk Plant', 5.0],
    ['Areca Palm', 164.99, '13.png', 'w/Vase Silk Plant', 4.2],
    ['Cherry Blossom', 98.99, '14.png', 'Bonsai Silk Tree', 4.9],
    ['Dracaena Silk', 87.99, '15.png', 'Plant (Real Touch)', 4.6],
    ['Bougainvillea', 151.99, '16.png', 'with Urn UV Resistant', 4.8],
    ['Areca Palm', 125.99, '17.png', 'Silk Tree w/Basket', 3.9],
    ['Golden Dieffenbachia', 890.99, '18.png', 'w/Decorative Planter', 4.9],
    ['Cedar Bonsai', 154.99, '19.png', 'Silk Plant', 5.0],
    ['Large Leaf Philodendron', 77.99, '20.png', 'Silk Plant (Real Touch)', 4.9],
  ];

  List items_indoor = [
    ['Mixed Areca Palm', 96.99, '5.png', 'Fern & Peacock', 4.5],
    ['Cherry Blossom', 98.99, '14.png', 'Bonsai Silk Tree', 4.9],
    ['Bougainvillea', 151.99, '16.png', 'with Urn Resistant', 4.8],
    ['Spathiphyllum', 55.99, '3.png', 'Artificial Plant', 4.9],
    ['Areca Palm Silk', 125.99, '17.png', 'Tree w/Basket', 3.9],
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