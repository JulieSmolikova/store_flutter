import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/model.dart';
import 'package:store/constants.dart';
import 'package:store/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blueGrey,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 70,),
            const Text('Store', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30, fontWeight: FontWeight.bold),),
            const SizedBox(height: 40,),
            Consumer<Data>(
                builder: (context, value, child) {
                  return Column(
                    children: [
                      Container(
                        height: 500,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
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
                                    Container(
                                        width: 200,
                                        height: 140,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Image.asset('assets/images/${value.items[index][2]}', )),
                                    Text(value.items[index][0], style: stile,),
                                    Text(value.items[index][1].toString(), style: stile,),

                                    GestureDetector(
                                      onTap: () {
                                        value.addToBasket(value.items[index][0]);},
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        color: Colors.white,
                                        child: const Icon(Icons.add_circle_outline, size: 20,),
                                      ),
                                    ),
                                  ],
                                ),

                              );
                            }),
                      ),
                    ],
                  );
                }),
            const SizedBox(height: 40,),
            ElevatedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) {
                        return const PageTwo();
                      }));
            },
              child: const Text(' Go to Basket'))
          ],
        ),

      ),
    );
  }
}
