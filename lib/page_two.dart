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

            const Text('Basket', style: stile,),

            Consumer<Data>(
                builder: (context, value, child) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 600,
                        child: ListView.builder(
                          itemCount: value.items.length,
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
                                  Text(value.basket[index].toString(), style: stile,),
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