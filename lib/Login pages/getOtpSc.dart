import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'loginSc.dart';
import 'resetPassSc.dart';

class OtpSc extends StatefulWidget {
  const OtpSc({super.key});

  @override
  State<OtpSc> createState() => _OtpScState();
}

class _OtpScState extends State<OtpSc> {

  String otp = "";

  List<TextEditingController> controllers = List.generate(5, (index) => TextEditingController());
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

                const Text('Verify OTP',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700)),

                const SizedBox(height: 20.45,),

                Row(
                  children: [
                    const Text('Remember your password?',style: TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),),

                    const SizedBox(width: 5,),

                    InkWell(
                        onTap: (){
                          Get.off( LoginSc());
                        },
                        child: const Text("Login",style: TextStyle(color: Color.fromRGBO(213, 113, 91, 1),fontSize: 14),)),
                  ],
                ),

                const SizedBox(height: 60,),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: List.generate(
                //     5,
                //         (index) => SizedBox(
                //       width: 58,
                //       height: 59,
                //       child: TextField(
                //         controller: controllers[index],
                //         keyboardType: TextInputType.number,
                //         textAlign: TextAlign.center,
                //         maxLength: 1,
                //         onChanged: (value) {
                //           if (value.isNotEmpty && index < 4) {
                //             FocusScope.of(context).nextFocus();
                //           }
                //         },
                //         decoration: InputDecoration(
                //           counterText: '',
                //           filled: true,
                //           fillColor: const Color.fromRGBO(229, 227, 227, 1.0),
                //           border: OutlineInputBorder
                //             (
                //             borderRadius: BorderRadius.circular(10),
                //             borderSide: BorderSide.none,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                PinCodeTextField(
                    appContext: context,
                    length: 5,

                  pinTheme: PinTheme(
                    activeFillColor: Color.fromRGBO(229, 227, 227, 1.0),
                    inactiveFillColor: Color.fromRGBO(229, 227, 227, 1.0),
                    borderRadius: BorderRadius.circular(10),
                    borderWidth: 0,
                    activeBorderWidth: 0,
                    inactiveColor: Color.fromRGBO(229, 227, 227, 1.0),
                    activeColor: Color.fromRGBO(229, 227, 227, 1.0),
                    selectedFillColor: Color.fromRGBO(229, 227, 227, 1.0),
                    selectedBorderWidth: 0,
                    selectedColor: Color.fromRGBO(229, 227, 227, 1.0),
                    disabledBorderWidth:0,
                    shape: PinCodeFieldShape.box,
                    fieldHeight: 58,
                    fieldWidth: 59

                  ),
                  enableActiveFill: true,
                  cursorColor: Colors.grey,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                ),


                const SizedBox(height: 20),

                const SizedBox(height: 30,),

                ElevatedButton(onPressed: (){
                    Get.to(()=>const ResetPassSc());
                },
                    style:ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(213, 113, 91, 1),
                        minimumSize: const Size(double.infinity, 50)
                    ),

                    child: const Text('Submit',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)),

                TextButton(onPressed: (){}, child: const Text("Resend Code",style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.w500),))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
