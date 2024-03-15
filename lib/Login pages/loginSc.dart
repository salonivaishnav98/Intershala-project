import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:software_labs/SignUp%20pages/signup_Sc.dart';
import '../main.dart';
import 'forgotPassSc.dart';

class LoginSc extends StatelessWidget {
  LoginSc({super.key});

  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(23.38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("FarmerEats",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  
                  const SizedBox(height: 46.75,),

                  const Text('Welcome back!',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700)),

                  const SizedBox(height: 20.45,),

                   Row(
                    children: [
                      const Text('New here?',style: TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),),

                      const SizedBox(width: 5,),

                      InkWell(
                          onTap: (){
                            Get.to(() =>  SignupSc());
                          },
                          child: const Text("Create account",style: TextStyle(color: Color.fromRGBO(213, 113, 91, 1),fontSize: 14),)),
                    ],
                  ),

                  const SizedBox(height: 60,),

                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(229, 227, 227, 1.0),
                      border: OutlineInputBorder
                        (
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                        hintText: "Email Address",
                        hintStyle: const TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),
                        prefixIcon: const Image(image: AssetImage('assets/images/Vector@1x.png'),),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),

                  const SizedBox(height: 30,),

                  TextField(
                    controller: passController,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(0),
                      filled: true,
                      fillColor: const Color.fromRGBO(229, 227, 227, 1.0),
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),
                      prefixIcon: const Image(image: AssetImage('assets/images/Group 47@1x.png'),),
                      suffixIcon: TextButton(
                        style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),

                        onPressed: (){
                          Get.to(const ForgotPassSc());
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text("Forgot?",style: TextStyle(color: Color.fromRGBO(213, 113, 91, 1)),),
                        ),
                      ),

                      border: OutlineInputBorder
                        (
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                    ),
                  ),

                  const SizedBox(height: 30,),

                  ElevatedButton(onPressed: (){},
                      style:ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(213, 113, 91, 1),
                        minimumSize: const Size(double.infinity, 50)
                      ),

                      child: const Text('Login',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)),

                  const SizedBox(height: 30),

                  const Center(child: Text('or login with',style: TextStyle(color: Color.fromRGBO(0,0,0,0.3),))),

                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white,),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Image(image: AssetImage('assets/images/icons8-google 1.png'),height: 30,),
                        )),

                      ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white,),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Image(image: AssetImage('assets/images/icons8-apple-logo 1@1x.png'),height: 30,),
                        )),

                      ElevatedButton(onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeSc(email: emailController.text,pass: passController.text,),), (route) => false);
                      },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white,),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Image(image: AssetImage('assets/images/Group 52@1x.png'),height: 30,),
                        )),
                    ],
                  )
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
