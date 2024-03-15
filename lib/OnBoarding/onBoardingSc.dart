

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Login pages/loginSc.dart';

class OnBoardingSc extends StatefulWidget {
  const OnBoardingSc({super.key});

  @override
  State<OnBoardingSc> createState() => _OnBoardingScState();
}

class _OnBoardingScState extends State<OnBoardingSc> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        items: [
          //1st Image of Slider
          Container(
            color: Colors.green,
            child: Stack(
              children: [
                Container(
                    height: 364,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage('assets/images/bg1.png'),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 400),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(20))

                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 35.06,),
                      const Text(
                        "Quality",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 20.45),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                            "Sell your farm fresh products directly to consumers, cutting out the middleman and reducing emissions of the global supply chain. ", textAlign: TextAlign.center,),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3, // Number of items in the slider
                              (index) => buildIndicator(index),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green), child: const Text('Join the movement!',style: TextStyle(color: Colors.white),),),
                      const SizedBox(height: 20.45),
                      TextButton(onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>  LoginSc(),), (route) => false);
                      }, child: const Text('Login',style: TextStyle(color: Colors.black),))
                    ],
                  ),
                )

              ],
            ),
          ),

          //2nd Image of Slider
          Container(
            color: const Color.fromRGBO(213, 113, 91, 1),
            child: Stack(
              children: [
                Container(
                    height: 364,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage('assets/images/Group.png'),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 400),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(20))

                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 35.06,),
                      const Text(
                        "Convenient",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 20.45,),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                            "Our team of delivery drivers will make sure your orders are picked up on time and promptly delivered to your customers.",
                        textAlign: TextAlign.center,),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3, // Number of items in the slider
                              (index) => buildIndicator(index),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(213, 113, 91, 1)), child: const Text('Join the movement!',style: TextStyle(color: Colors.white),),),
                      const SizedBox(height: 20.45),
                      TextButton(onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>  LoginSc(),), (route) => false);
                      }, child: const Text('Login',style: TextStyle(color: Colors.black),))
                    ],
                  ),
                )

              ],
            ),
          ),

          //3rd Image of Slider
          Container(
            color: const Color.fromRGBO(248,197,105,1),
            child: Stack(
              children: [
                Container(
                    height: 364,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage('assets/images/Group 46.png'),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 400),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(20))

                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 35.06,),
                      const Text(
                        "Local",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 20.45,),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                            "We love the earth and know you do too! Join us in reducing our local carbon footprint one order at a time. ",
                        textAlign: TextAlign.center,),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3, // Number of items in the slider
                              (index) => buildIndicator(index),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(248,197,105,1)), child: const Text('Join the movement!',style: TextStyle(color: Colors.white),),),
                      const SizedBox(height: 20.45),
                      TextButton(onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>  LoginSc(),), (route) => false);
                      }, child: const Text('Login',style: TextStyle(color: Colors.black),))
                    ],
                  ),
                )

              ],
            ),
          ),
        ],

        //Slider Container properties
        options: CarouselOptions(
          height: double.infinity,
          //enlargeCenterPage: true,
          autoPlay: false,
          aspectRatio: 112 / 9,
         // autoPlayCurve: Curves.easeInCubic,


          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget buildIndicator(int index) {
    return Container(
      width: _currentIndex == index ? 20.0 : 10.0,
      height: 10.0,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        // shape: _currentIndex==index?BoxShape.circle:BoxShape.circle,
        color: _currentIndex == index ? Colors.black : Colors.black38,
      ),
    );
  }
}