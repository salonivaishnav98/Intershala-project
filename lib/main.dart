import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'OnBoarding/onBoardingSc.dart';
import 'Values/colorFile.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
        ),
        primaryColor: ColorFile.primaryColor,
      ),
      home: const OnBoardingSc(),
      title: "Login Register",
    );
  }
}
class HomeSc extends StatelessWidget {


  final String email;
  final String pass;


   const HomeSc({super.key,
     required this.email,
     required this.pass,
   });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Stack(
          children:[
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/Vector@3x-5.png'),height: 80.41,width: 120.61,),

            SizedBox(height: 20,),

            Text("You're all done!",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700),),

            SizedBox(height: 20,),

            Text("Hang tight!  We are currently reviewing your"
                " account and will follow up with you in 2-3 business days"
                ". In the meantime, you can setup your inventory.",
            style: TextStyle(fontSize: 12,color: Color.fromRGBO(137,137,137,1)),textAlign: TextAlign.center)
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    onPressed: (){

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorFile.primaryColor,
                        minimumSize: const Size(double.infinity, 50)
                    ),
                    child: const Text('Got it!',style: TextStyle(color: Colors.white,fontSize: 18),)))
          ]
        ),
      )
    );
  }
}

