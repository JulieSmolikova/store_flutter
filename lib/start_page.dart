import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [

          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/bcgr/3.png', fit: BoxFit.cover,),
          ),

          Positioned(
            top: 50,
            left: 10,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.1,
              child: const Text('M.PLANT',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'League Gothic Regular',
                    fontSize: 25,
                ),
              ),
            ),
          ),

          Positioned(
            top: 120,
            left: 40,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                  Text('House Plant',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontFamily: 'Babylonica Regular',
                    fontSize: 60),
                  ),
                  Text('A Plant You Need To Water It In Order For It To Grow',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Nunito ExtraLight',
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                  )],
                ),
              ),
          ),

          Positioned(
            //right: -230,
            left: -50,
            bottom: -230,
            child: Container(
              height: 900,
              color: Colors.transparent,
              child: Image.asset('assets/images/bcgr/2.png', fit: BoxFit.cover,),
            ),
          )
        ],
      ),
    );
  }
}



