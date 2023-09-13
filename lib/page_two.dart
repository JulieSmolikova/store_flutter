import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/model.dart';
import 'package:store/constants.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: const EdgeInsets.all(10),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            const Text('Basket', style: stile_pink,),
            const SizedBox(height: 20,),

            Consumer<Data>(
                builder: (context, value, child) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      SizedBox(
                        height: 50,
                        child: Text('Total price: ${value.calculatePrice()}', style: stile_pink,),
                      ),

                      Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        child: ListView.builder(
                          itemCount: value.basket.length,
                          itemBuilder: (context, index) {
                            return Container(
                                      height: 90,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(15),
                                      ),

                              child: Stack(
                                children: [

                                    Container(
                                    height: 80,
                                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                                    decoration: BoxDecoration(
                                      color: KBlue,
                                      borderRadius: BorderRadius.circular(15),
                                    ),),

                                    Positioned(
                                      top: 5,
                                      left: 0,
                                      child: Container(
                                        width: 100,
                                        height: 70,
                                        clipBehavior: Clip.hardEdge,
                                        margin: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            color: Colors.white
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 8,
                                      left: 5,
                                      child: Container(
                                          width: 95,
                                          height: 95,
                                          color: Colors.transparent,
                                          child: Image.asset('assets/images/catalog/${value.basket[index][2]}', fit: BoxFit.cover, )),
                                    ),

                                    Positioned(
                                        top: 13,
                                        left: 120,
                                        child: Text(value.basket[index][0], style: stile_pink,)),

                                    Positioned(
                                        top: 31,
                                        left: 120,
                                        child: Text(value.basket[index][3], style: stile_sm,)),

                                    const Positioned(
                                        bottom: 9,
                                        left: 120,
                                        child: Text('\$', style: stile_pink,)),

                                    Positioned(
                                        bottom: 9,
                                        left: 133,
                                        child: Text(value.basket[index][1].toString(), style: stile_pink,)),

                                    Positioned(
                                        bottom: 10,
                                        left: 200,
                                        child:
                                        Row(
                                            children: List.generate(5, (i) =>
                                                Icon(Icons.star,
                                                    size: 18,
                                                    color: i < double.parse((value.basket[index][4].toString())).toInt()
                                                        ? KTurq
                                                        : Colors.grey))
                                        )
                                    ),
                                ]
                              )
                            );
                          },
                        ))
                    ],
                  );
                }
            ),

            const SizedBox(height: 30,),

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