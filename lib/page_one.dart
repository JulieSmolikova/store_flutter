import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/Widgets/glow_box.dart';
import 'package:store/model.dart';
import 'package:store/constants.dart';
import 'package:store/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 50,),

                Container(
                  padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.055,
                          child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).pop();
                              },
                              child: Image.asset('assets/icons/menu.png',))),

                      const SizedBox(width: 190,),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) {
                                    return const PageTwo();
                                  })); },
                        child:  Container(
                            height: 45,
                            width: 45,
                            decoration: decor_box,
                            child: Image.asset('assets/icons/plant.png')),),

                      Container(
                          height: 45,
                          width: 45,
                          decoration: decor_box,
                          padding: const EdgeInsets.all(10),
                          child: Image.asset('assets/icons/power.png',)),
                    ],
                  ),
                ),

                const SizedBox(height: 15,),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          SizedBox(width: 10,),
                          Text('Welcome Back...!',
                            style: TextStyle(
                                fontFamily: 'Nunito ExtraLight',
                                fontSize: 30,
                                fontWeight: FontWeight.bold),)],
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 10,),
                          Text('Change Your Mind with Help Of Plant.',
                            style: TextStyle(
                                fontFamily: 'Nunito ExtraLight',
                                fontSize: 18,
                                fontWeight: FontWeight.bold),)],
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 75,),

                Consumer<Data>(builder: (context, value, child) {
                  return Container(
                      height: MediaQuery.of(context).size.height * 0.31,
                      color: Colors.transparent,
                      child: ListView.builder(
                          itemCount: value.items_indoor.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                const Positioned(
                                    bottom: 70,
                                    right: 0,
                                    child: GlowBox(
                                        width: 80,
                                        height: 70,
                                        colorBox: Colors.indigo,
                                        blurRadius: 70)
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.31,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  margin: const EdgeInsets.symmetric(horizontal: 20),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                          height: MediaQuery.of(context).size.height * 0.31,
                                          width: MediaQuery.of(context).size.width * 0.4,
                                          child: Image.asset('assets/images/bcgr/1.png', fit: BoxFit.cover,)),
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                          height: MediaQuery.of(context).size.height * 0.14,
                                          width: MediaQuery.of(context).size.width * 0.35,
                                          margin: const EdgeInsets.all(10),
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: MediaQuery.of(context).size.width * 0.3,
                                        left: 5,
                                        child: Container(
                                          width: 140,
                                          height: 140,
                                          color: Colors.transparent,
                                          child: Image.asset('assets/images/catalog/${value.items_indoor[index][2]}'),
                                        ),
                                      ),
                                      Positioned(
                                          bottom: MediaQuery.of(context).size.height * 0.125,
                                          left: MediaQuery.of(context).size.width * 0.055,
                                          child: Text(value.items_indoor[index][0], style: stile_pink,)),
                                      Positioned(
                                          bottom: MediaQuery.of(context).size.height * 0.105,
                                          left: MediaQuery.of(context).size.width * 0.08,
                                          child: Text(value.items_indoor[index][3], style: stile_sm,)),
                                      Positioned(
                                          bottom: MediaQuery.of(context).size.height * 0.07,
                                          left: MediaQuery.of(context).size.width * 0.05,
                                          child: const Text('\$', style: stile_pink,)),
                                      Positioned(
                                          bottom: MediaQuery.of(context).size.height * 0.07,
                                          left: MediaQuery.of(context).size.width * 0.085,
                                          child: Text(value.items_indoor[index][1].toString(), style: stile_pink,)),
                                      Positioned(
                                          bottom: MediaQuery.of(context).size.height * 0.071,
                                          right: MediaQuery.of(context).size.width * 0.115,
                                          child: const Icon(Icons.star, color: Color(0xffeafaf2ff), size: 18,)),
                                      Positioned(
                                          bottom: MediaQuery.of(context).size.height * 0.07,
                                          right: MediaQuery.of(context).size.width * 0.05,
                                          child: Text(value.items_indoor[index][4].toString(), style: stile_pink,)),
                                      Positioned(
                                        bottom: MediaQuery.of(context).size.height * 0.02,
                                        left: MediaQuery.of(context).size.width * 0.08,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          padding: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Image.asset('assets/icons/basket.png', fit: BoxFit.cover),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: MediaQuery.of(context).size.height * 0.02,
                                        right: MediaQuery.of(context).size.width * 0.08,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          padding: const EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Icon(
                                            Icons.favorite, size: 23, color: KTurq, shadows: [BoxShadow(color: Colors.blue.withOpacity(0.7), blurRadius: 15, spreadRadius: 15)],),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }
                      )
                  );
                }),

                const SizedBox(height: 15,),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Promotion More Plants', textAlign: TextAlign.start, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,),),
                    ],
                  ),
                ),

                const SizedBox(height: 10,),

                Consumer<Data>(
                    builder: (context, value, child) {
                      return Stack(
                        children: [

                          const Positioned(
                              bottom: 0,
                              left: 0,
                              child: GlowBox(
                                  width: 80,
                                  height: 70,
                                  colorBox: Colors.indigo,
                                  blurRadius: 200)
                          ),
                          const Positioned(
                              top: 0,
                              right: 0,
                              child: GlowBox(
                                  width: 80,
                                  height: 70,
                                  colorBox: Colors.indigo,
                                  blurRadius: 200)
                          ),

                          Container(
                            height: MediaQuery.of(context).size.height * 0.2985,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                            ),

                            child: ListView.builder(
                                itemCount: value.items.length,
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
                                            color: value.items[index] == value.items[0]
                                                || value.items[index] == value.items[2]
                                                || value.items[index] == value.items[4]
                                                || value.items[index] == value.items[6]
                                                || value.items[index] == value.items[8]
                                                || value.items[index] == value.items[10]
                                                || value.items[index] == value.items[12]
                                                || value.items[index] == value.items[14]
                                                || value.items[index] == value.items[16]
                                                || value.items[index] == value.items[18]
                                                ? KPink
                                                : KBlue,
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
                                              child: Image.asset('assets/images/catalog/${value.items[index][2]}', fit: BoxFit.cover, )),
                                        ),

                                        Positioned(
                                            top: 13,
                                            left: 120,
                                            child: Text(value.items[index][0], style: stile_pink,)),

                                        Positioned(
                                            top: 31,
                                            left: 120,
                                            child: Text(value.items[index][3], style: stile_sm,)),

                                        const Positioned(
                                            bottom: 9,
                                            left: 120,
                                            child: Text('\$', style: stile_pink,)),

                                        Positioned(
                                            bottom: 9,
                                            left: 133,
                                            child: Text(value.items[index][1].toString(), style: stile_pink,)),

                                        Positioned(
                                            bottom: 10,
                                            left: 200,
                                            child: Icon(Icons.star, color: KTurq, size: 18,)),

                                        Positioned(
                                            bottom: 9,
                                            left: 225,
                                            child: Text(value.items[index][4].toString(), style: stile_pink,)),

                                        Positioned(
                                          bottom: 33,
                                          right: 20,
                                          child: GestureDetector(
                                            onTap: () {
                                              value.addToBasket(index);
                                            },
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              padding: const EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Icon(
                                                Icons.favorite, size: 23, color: KTurq, shadows: [BoxShadow(color: Colors.blue.withOpacity(0.7), blurRadius: 15, spreadRadius: 15)],),
                                            ),
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
              ],
            ),

          ),

          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.015,
            left: MediaQuery.of(context).size.width * 0.23,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  width: 230,
                  height: 70,
                  child: Stack(
                    children: [
                      BackdropFilter(filter: ImageFilter.blur(sigmaY: 1.5, sigmaX: 1.5),                    child: Container(),),
                      Container(
                        width: 230,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey.withOpacity(0.6), width: 1.6),
                            color:  Colors.white.withOpacity(0.55)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.asset('assets/icons/glass.png'),
                            ),
                            const SizedBox(width: 25,),
                            Container(
                              width: 2,
                              height: 35,
                              color: Colors.black.withOpacity(0.4),
                            ),
                            const SizedBox(width: 25,),
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.asset('assets/icons/home.png'),
                            ),
                            const SizedBox(width: 25,),
                            Container(
                              width: 2,
                              height: 35,
                              color: Colors.black.withOpacity(0.4),
                            ),
                            const SizedBox(width: 25,),
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.asset('assets/icons/setting.png'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
          ),
        ],
      )


    );
  }
}
