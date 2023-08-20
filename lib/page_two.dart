import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/model.dart';
import 'package:store/constants.dart';
import 'package:store/constants.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blueGrey,
        padding: const EdgeInsets.all(10),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 70,),

            const Text('Basket', style: stile_pink,),

            Consumer<Data>(
                builder: (context, value, child) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SizedBox(
                        height: 50,
                        child: Text('Total price: ${value.calculatePrice()}', style: stile_pink,),
                      ),

                      SizedBox(
                        height: 500,
                        child: ListView.builder(
                          itemCount: value.basket.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 150,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [

                                  Container(
                                      width: 200,
                                      height: 140,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.asset('assets/images/${value.basket[index][2]}', )),

                                  Text(value.basket[index][0], style: stile_pink,),

                                  Text(value.basket[index][1].toString(), style: stile_pink,),

                                  IconButton(
                                      onPressed: () {
                                        value.deleteItem(index, context);
                                      },
                                      icon: const Icon(
                                          Icons.delete_forever_outlined,
                                          color: Colors.white,
                                        size: 25,
                                      ))
                                ],
                              ),
                            );
                          },
                        ))
                    ],
                  );
                }
            ),

            ElevatedButton(onPressed: () {
              Navigator.of(context).pop();
            },
                child: const Text('Back'))
          ],
        ),


      ),
    );
  }
}