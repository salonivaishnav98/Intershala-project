import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getOtpSc.dart';
import 'loginSc.dart';

class ForgotPassSc extends StatelessWidget {
  const ForgotPassSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(23.38),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("FarmerEats",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
        
                const SizedBox(height: 46.75,),

                const Text('Forgot Password?',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700)),

                const SizedBox(height: 20.45,),

                 Row(
                  children: [
                    const Text('Remember your password?',style: TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),),

                    const SizedBox(width: 5,),

                    InkWell(
                      onTap: (){
                        Get.off(() =>  LoginSc());
                      },
                      child: const Text("Login",style: TextStyle(color: Color.fromRGBO(213, 113, 91, 1),fontSize: 14),)),
                  ],
                ),

                const SizedBox(height: 60,),

                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(229, 227, 227, 1.0),
                    border: OutlineInputBorder
                      (
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Phone Number",
                    hintStyle: const TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),
                    prefixIcon: const Image(image: AssetImage('assets/images/Vector@1x-2.png'),),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 30,),

                ElevatedButton(onPressed: (){

                  Get.to(() => const OtpSc());
                },
                    style:ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(213, 113, 91, 1),
                        minimumSize: const Size(double.infinity, 50)
                    ),

                    child: const Text('Send Code',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),))
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}
