import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:software_labs/Models/RegisterModel.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;
import '../Utils/toastMsg.dart';
import '../Values/colorFile.dart';
import '../main.dart';

class SignupSc extends StatelessWidget {


  SignupSc({super.key});

  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumController = TextEditingController();
  final passController = TextEditingController();
  final rePassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(23.38),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  height: 800,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("FarmerEats",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),

                      const SizedBox(height: 30.45,),

                      const Text('Signup 1 of 4',style: TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14)),

                      const SizedBox(height: 07.45,),

                      const Text('Welcome!',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700)),


                      const SizedBox(height: 30,),

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

                          },
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.white,),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Image(image: AssetImage('assets/images/Group 52@1x.png'),height: 30,),
                              )),
                        ],
                      ),

                      const SizedBox(height: 20,),

                      const Center(child: Text('or signup with',style: TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14))),

                      const SizedBox(height: 20.45,),

                      TextField(
                        controller: fullNameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 227, 227, 1.0),
                          border: OutlineInputBorder
                            (
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Full Name",
                          hintStyle: const TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),
                          prefixIcon: const Image(image: AssetImage('assets/images/Group 59@1x.png'),),
                        ),
                      ),

                      const SizedBox(height: 20,),

                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
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
                          prefixIcon: const Image(image: AssetImage('assets/images/Group 57@1x.png'),),
                        ),
                      ),

                      const SizedBox(height: 20,),

                      TextField(
                        controller: phoneNumController,
                        keyboardType: TextInputType.number,
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
                          prefixIcon: const Image(image: AssetImage('assets/images/Vector@1x-4.png'),),
                        ),
                      ),

                      const SizedBox(height: 20,),

                      TextField(
                        controller: passController,
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 227, 227, 1.0),
                          border: OutlineInputBorder
                            (
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),
                          prefixIcon: const Image(image: AssetImage('assets/images/Group 58@1x.png'),),
                        ),
                      ),

                      const SizedBox(height: 20,),

                      TextField(
                        controller: rePassController,
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 227, 227, 1.0),
                          border: OutlineInputBorder
                            (
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Re-enter Password",
                          hintStyle: const TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),
                          prefixIcon: const Image(image: AssetImage('assets/images/Group 58@1x.png'),),
                        ),
                      ),

                      const SizedBox(height: 30,),

                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  color: Colors.white,
                  child: Row(
                    children: [

                      const Expanded(
                        flex: 1,
                        child: Text('Login',style: TextStyle(color: Color.fromRGBO(0,0,0,1),fontSize: 14,decoration: TextDecoration.underline),),),

                      Expanded(
                        flex: 2,
                        child: ElevatedButton(onPressed: (){

                          if(fullNameController.text.isEmpty || emailController.text.isEmpty || phoneNumController.text.isEmpty || passController.text.isEmpty || rePassController.text.isEmpty){

                            FlutterToast().toastMsg("Please fill all the fields");

                          }else{

                            if(passController.text != rePassController.text){

                              FlutterToast().toastMsg('Password did not match');

                            }else{
                              print("sign up screen.............");
                              Get.to(()=> FarmInfo(fName: fullNameController.text, email: emailController.text,phone: phoneNumController.text,pass: passController.text, type:'email'));
                            }


                          }

                          //Get.to(()=> FarmInfo(fName: fullNameController.text, email: emailController.text,phone: phoneNumController.text,pass: passController.text, type:'email'));
                        },
                            style:ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(213, 113, 91, 1),
                                minimumSize: const Size(double.infinity, 50)
                            ),
                            child: const Text('Continue',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



class FarmInfo extends StatelessWidget {

  final String fName;
  final String email;
  final String phone;
  final String pass;
  final String type;


  FarmInfo({super.key,required this.fName,required this.email,required this.phone,required this.pass,required this.type});

  final businessNameController = TextEditingController();

  final informalNameController = TextEditingController();

  final streetAddController = TextEditingController();

  final cityController = TextEditingController();

  final stateController = TextEditingController();

  final zipcodeController = TextEditingController();

  final String role = 'farmer';

  @override
  Widget build(BuildContext context) {
    int? integerValue;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(23.38),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  height: 650,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("FarmerEats",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),

                      const SizedBox(height: 30.45,),

                      const Text('Signup 2 of 4',style: TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14)),

                      const SizedBox(height: 07.45,),

                      const Text('Farm Info',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700)),


                      const SizedBox(height: 30,),

                      TextField(
                        controller: businessNameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 227, 227, 1.0),
                          border: OutlineInputBorder
                            (
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Business Name",
                          hintStyle: const TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),
                          prefixIcon: const Image(image: AssetImage('assets/images/Group 59@1x.png'),),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),

                      const SizedBox(height: 30,),

                      TextField(
                        controller: informalNameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 227, 227, 1.0),
                          border: OutlineInputBorder
                            (
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Informal Name",
                          hintStyle: const TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),
                          prefixIcon: const Image(image: AssetImage('assets/images/Group 57@1x.png'),),
                        ),
                      ),

                      const SizedBox(height: 30,),

                      TextField(
                        controller: streetAddController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 227, 227, 1.0),
                          border: OutlineInputBorder
                            (
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Street Address",
                          hintStyle: const TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),
                          prefixIcon: const Image(image: AssetImage('assets/images/Vector@1x-4.png'),),
                        ),
                      ),

                      const SizedBox(height: 30,),

                      TextField(
                        controller: cityController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 227, 227, 1.0),
                          border: OutlineInputBorder
                            (
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "City",
                          hintStyle: const TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),
                          prefixIcon: const Image(image: AssetImage('assets/images/Group 58@1x.png'),),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),

                      const SizedBox(height: 30,),


                      Row(
                        children: [

                          Expanded(
                            flex: 1,
                            child: TextField(
                              controller: stateController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromRGBO(229, 227, 227, 1.0),
                                border: OutlineInputBorder
                                  (
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "State",
                                hintStyle: const TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),
                                suffixIcon: const Image(image: AssetImage('assets/images/Polygon 1@1x.png'),),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),),

                          const SizedBox(width: 20,),

                          Expanded(
                            flex: 2,
                            child: TextField(
                              controller: zipcodeController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromRGBO(229, 227, 227, 1.0),
                                border: OutlineInputBorder
                                  (
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "Enter Zipcode",
                                hintStyle: const TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  color: Colors.white,
                  child: Row(
                    children: [

                      const Expanded(
                        flex: 1,
                        child: Text('Login',style: TextStyle(color: Color.fromRGBO(0,0,0,1),fontSize: 14,decoration: TextDecoration.underline),),),

                      Expanded(
                        flex: 2,
                        child: ElevatedButton(onPressed: (){

                          if (zipcodeController.text.isNotEmpty) {
                            integerValue = int.tryParse(zipcodeController.text)!;
                            print("Farm Info screen ...........$fName");
                            print("Farm Info screen ...........$pass");
                          }
                          if(businessNameController.text.isEmpty || informalNameController.text.isEmpty || zipcodeController.text.isEmpty || streetAddController.text.isEmpty || stateController.text.isEmpty){
                            FlutterToast().toastMsg("Please fill all the fields!");
                          }else{
                            Get.to(()=> PdfVerification(
                              fName:fName,
                              email: email,
                              phone: phone,
                              pass: pass,
                              role: role,
                              type: type,
                              businessName: businessNameController.text,
                              informalName: informalNameController.text,
                              streetAdd: streetAddController.text,
                              city: cityController.text,
                              state: stateController.text,
                              zipcode: integerValue!
                            ) );
                          }


                        },
                            style:ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(213, 113, 91, 1),
                                minimumSize: const Size(double.infinity, 50)
                            ),
                            child: const Text('Continue',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)),
                      ),


                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PdfVerification extends StatefulWidget {

  final String fName;
  final String email;
  final String phone;
  final String pass;
  final String type;
  final String role;
  final String businessName;
  final String informalName;
  final String streetAdd;
  final String city;
  final String state;
  final int zipcode;

   const PdfVerification({super.key, required this.fName, required this.email, required this.phone, required this.pass, required this.type, required this.role, required this.businessName,required this.informalName, required this.streetAdd,required this.city,required this.state, required this.zipcode});

  @override
  State<PdfVerification> createState() => _PdfVerificationState();

}

class _PdfVerificationState extends State<PdfVerification> {
  //method for pdf picker

  late String fName;
  late String email;
  late String phone;
  late String pass;
  late String type;
  late String role;
  late String businessName;
  late String informalName;
  late String streetAdd;
  late String city;
  late String state;
  late int zipcode;
  // Other properties...

  @override
  void initState() {
    super.initState();
    // Initialize properties
    fName = widget.fName;
    email = widget.email;
    phone = widget.phone;
    pass = widget.pass;
    type = widget.type;
    role = widget.role;
    businessName = widget.businessName;
    informalName = widget.informalName;
    streetAdd = widget.streetAdd;
    city = widget.city;
    state = widget.state;
    zipcode = widget.zipcode;
    // Initialize other properties...
  }

  String _pdfFileName = '';
  PlatformFile? _selectedPdf;
  FilePickerResult? result;





  Future<void> _pickPDF() async {

    try {
      result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (result != null) {
        setState(() {
          _selectedPdf = result!.files.single;
          _pdfFileName = _selectedPdf?.name ?? '';
        });
      } else {
        // User canceled the file picking
        print('User canceled picking a file.');
      }
    } catch (e) {
      // Handle errors
      print('Error picking PDF file: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(23.38),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  height: 650,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("FarmerEats",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),

                      const SizedBox(height: 30.45,),

                      const Text('Signup 3 of 4',style: TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14)),

                      const SizedBox(height: 07.45,),

                      const Text('Verification',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700)),


                      const SizedBox(height: 30,),

                      const Text('Choose the hours your farm is open for pickups. This will allow customers to order deliveries.',style: TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14)),

                      const SizedBox(height: 30,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Attach proof of registration',style: TextStyle(fontSize: 14),),
                          InkWell(
                            onTap: (){
                              _pickPDF();
                            },

                            child: const CircleAvatar(

                              radius: 25,
                              backgroundImage: AssetImage('assets/images/Ellipse 6.png'),
                              child: Image(image: AssetImage('assets/images/Group 61@1x.png')),
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      _pdfFileName.isEmpty? Container(): Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: ColorFile.fieldColor,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(_pdfFileName,style: const TextStyle(decoration: TextDecoration.underline),),
                                 InkWell(
                                   onTap: (){
                                      setState(() {
                                      _pdfFileName = '';
                                      });
                                   },
                                     child: const Image(image: AssetImage('assets/images/Group 71@2x.png')))
                              ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  color: Colors.white,
                  child: Row(
                    children: [

                      const Expanded(
                        flex: 1,
                        child: Text('Login',style: TextStyle(color: Color.fromRGBO(0,0,0,1),fontSize: 14,decoration: TextDecoration.underline),),),

                      Expanded(
                        flex: 2,
                        child: ElevatedButton(onPressed: (){
                          
                            if(_pdfFileName.isEmpty){
                              
                              FlutterToast().toastMsg("Attach Verification proof");
                              
                            }else{

                              print("pdf verification 1...........$fName");
                              print("pdf verification 1...........$role");
                              print("pdf verification 1...........$city");
                              print("pdf verification 1...........$_pdfFileName");

                              Get.to(()=> BusinessHrSc(
                                  fName: fName,
                                email: email,
                                phone: phone,
                                pass: pass,
                                type: type,
                                role: role,
                                businessName: businessName,
                                informalName: informalName,
                                streetAdd: streetAdd,
                                city: city,
                                state: state,
                                zipcode: zipcode,
                                pdfFileName: _pdfFileName
                              )
                              );
                              
                            }
                          
                             },
                            style:ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(213, 113, 91, 1),
                                minimumSize: const Size(double.infinity, 50)
                            ),
                            child: const Text('Continue',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BusinessHrSc extends StatefulWidget {
  final String fName;
  final String email;
  final String phone;
  final String pass;
  final String type;
  final String role;
  final String businessName;
  final String informalName;
  final String streetAdd;
  final String city;
  final String state;
  final int zipcode;
  final String pdfFileName;

  const BusinessHrSc({super.key,
    required this.fName,
    required this.email,
    required this.phone,
    required this.pass,
    required this.type,
    required this.role ,
    required this.businessName,
    required this.informalName,
    required this.streetAdd,
    required this.city,
    required this.state,
    required this.zipcode,
    required this.pdfFileName});

  @override
  State<BusinessHrSc> createState() => _BusinessHrScState();
}

class _BusinessHrScState extends State<BusinessHrSc> {

  late String fName;
  late String email;
  late String phone;
  late String pass;
  late String type;
  late String role;
  late String businessName;
  late String informalName;
  late String streetAdd;
  late String city;
  late String state;
  late int zipcode;
  late String pdfFileName;
  // Other properties...

  @override
  void initState() {
    super.initState();
    // Initialize properties
    fName = widget.fName;
    email = widget.email;
    phone = widget.phone;
    pass = widget.pass;
    type = widget.type;
    role = widget.role;
    businessName = widget.businessName;
    informalName = widget.informalName;
    streetAdd = widget.streetAdd;
    city = widget.city;
    state = widget.state;
    zipcode = widget.zipcode;
    pdfFileName = widget.pdfFileName;
}

  @override
  Widget build(BuildContext context) {

    Color? _containerColor;

    final Map<String,List<String>> businesseHr = {
      'Mon':['8:00-10:00',]
    };

    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(23.38),
                child: Stack(
                    children: [
                      SingleChildScrollView(
                          child: SizedBox(
                            height: 650,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("FarmerEats", style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),

                                const SizedBox(height: 30.45,),

                                const Text('Signup 4 of 4',
                                    style: TextStyle(color: Color.fromRGBO(0, 0,
                                        0, 0.3), fontSize: 14)),

                                const SizedBox(height: 07.45,),

                                const Text('Business Hours', style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.w700)),


                                const SizedBox(height: 30,),

                                const Text(
                                    'Attached proof of Department of Agriculture registrations i.e. Florida Fresh, USDA Approved, USDA Organic',
                                    style: TextStyle(color: Color.fromRGBO(0, 0,
                                        0, 0.3), fontSize: 14)),

                                const SizedBox(height: 30,),

                                SizedBox(height: 36,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Expanded(
                                        child: GestureDetector(

                                          onTap: (){
                                            setState(() {
                                              _containerColor =
                                              _containerColor == Colors.white ? ColorFile.primaryColor : Colors.white;
                                            });
                                          },

                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(8),
                                              color: Colors.white,
                                              border: Border.all(
                                                color: ColorFile.darkgray,
                                                // Set the border color
                                                width: 2.0, // Set the border width
                                              ),
                                            ),
                                            child: const Center(child: Text('M',
                                              style: TextStyle(
                                                  color: ColorFile.darkgray,
                                                  fontSize: 16),)),
                                          ),
                                        ),

                                      ),
                                      const SizedBox(width: 10,),
                                      Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(8),
                                              border: Border.all(
                                                color: ColorFile.darkgray,
                                                // Set the border color
                                                width: 2.0, // Set the border width
                                              ),
                                            ),
                                            child: const Center(child: Text('T',
                                              style: TextStyle(
                                                  color: ColorFile.darkgray,
                                                  fontSize: 16),)),)),
                                      const SizedBox(width: 10,),
                                      Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(8),
                                              border: Border.all(
                                                color: ColorFile.darkgray,
                                                // Set the border color
                                                width: 2.0, // Set the border width
                                              ),
                                            ),
                                            child: const Center(child: Text('W',
                                              style: TextStyle(
                                                  color: ColorFile.darkgray,
                                                  fontSize: 16),)),)),
                                      const SizedBox(width: 10,),
                                      Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(8),
                                              border: Border.all(
                                                color: ColorFile.darkgray,
                                                // Set the border color
                                                width: 2.0, // Set the border width
                                              ),
                                            ),
                                            child: const Center(child: Text('Th',
                                              style: TextStyle(
                                                  color: ColorFile.darkgray,
                                                  fontSize: 16),)),)),
                                      const SizedBox(width: 10,),
                                      Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(8),
                                              border: Border.all(
                                                color: ColorFile.darkgray,
                                                // Set the border color
                                                width: 2.0, // Set the border width
                                              ),
                                            ),
                                            child: const Center(child: Text('F',
                                              style: TextStyle(
                                                  color: ColorFile.darkgray,
                                                  fontSize: 16),)),)),
                                      const SizedBox(width: 10,),
                                      Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(8),
                                              border: Border.all(
                                                color: ColorFile.darkgray,
                                                // Set the border color
                                                width: 2.0, // Set the border width
                                              ),
                                            ),
                                            child: const Center(child: Text('S',
                                              style: TextStyle(
                                                  color: ColorFile.darkgray,
                                                  fontSize: 16),)),)),
                                      const SizedBox(width: 10,),
                                      Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(8),
                                              border: Border.all(
                                                color: ColorFile.darkgray,
                                                // Set the border color
                                                width: 2.0, // Set the border width
                                              ),
                                            ),
                                            child: const Center(child: Text('Su',
                                              style: TextStyle(
                                                  color: ColorFile.darkgray,
                                                  fontSize: 16),)),)),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _containerColor =
                                                _containerColor == ColorFile.fieldColor ? Colors
                                                    .orangeAccent : ColorFile.fieldColor;
                                              });
                                            },
                                            child: Container(

                                              decoration: BoxDecoration(
                                                  color: _containerColor,
                                                  borderRadius: BorderRadius.circular(8)
                                              ),

                                              child: const Center(
                                                  heightFactor: 3,
                                                  child: Text('8:00am - 10:00am')),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10,),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _containerColor =
                                                _containerColor == ColorFile.fieldColor ? Colors
                                                    .orangeAccent : ColorFile.fieldColor;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: _containerColor,
                                                  borderRadius: BorderRadius.circular(8)
                                              ),
                                              child: const Center(
                                                  heightFactor: 3,
                                                  child: Text('10:00am - 1:00pm',)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _containerColor =
                                                _containerColor == ColorFile.fieldColor ? Colors
                                                    .orangeAccent : ColorFile.fieldColor;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: _containerColor,
                                                  borderRadius: BorderRadius.circular(8)
                                              ),
                                              child: const Center(
                                                  heightFactor: 3,
                                                  child: Text('1:00pm - 4:00pm')),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10,),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _containerColor =
                                                _containerColor == ColorFile.fieldColor ? Colors
                                                    .orangeAccent : ColorFile.fieldColor;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: _containerColor,
                                                  borderRadius: BorderRadius.circular(8)
                                              ),
                                              child: const Center(
                                                  heightFactor: 3,
                                                  child: Text('4:00pm - 7:00pm',)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _containerColor =
                                                _containerColor == ColorFile.fieldColor ? Colors
                                                    .orangeAccent : ColorFile.fieldColor;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: _containerColor,
                                                  borderRadius: BorderRadius.circular(8)
                                              ),
                                              child: const Center(
                                                  heightFactor: 3,
                                                  child: Text('7:00pm - 10:00pm')),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10,),
                                        Expanded(
                                            child: Container(
                                            ))
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                      ),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.only(top: 10),
                          color: Colors.white,
                          child: Row(
                            children: [

                              const Expanded(
                                flex: 1,
                                child: Text('Login', style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 14,
                                    decoration: TextDecoration.underline),),),

                              Expanded(
                                flex: 2,
                                child: ElevatedButton(onPressed: () {
                                  Get.to(() => Verification(
                                    fName: fName,
                                    email: email,
                                    phone: phone,
                                    pass: pass,
                                    type: type,
                                    role: role,
                                    businessName: businessName,
                                    informalName: informalName,
                                    streetAdd: streetAdd,
                                    city: city,
                                    state: state,
                                    zipcode: zipcode,
                                    pdfFile: pdfFileName,
                                    businesseHr: businesseHr,
                                    socialId: "abc",
                                  ));
                                },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromRGBO(
                                            213, 113, 91, 1),
                                        minimumSize: const Size(
                                            double.infinity, 50)
                                    ),
                                    child: const Text('Continue',
                                      style: TextStyle(color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),)),
                              ),
                            ],
                          ),
                        ),
                      )

                    ]
                )
            )
        )
    );
  }
}



class Verification extends StatefulWidget {

  final String fName;
  final String email;
  final String phone;
  final String pass;
  final String type;
  final String role;
  final String businessName;
  final String informalName;
  final String streetAdd;
  final String city;
  final String state;
  final int zipcode;
  final String pdfFile;
  final Map<String,List<String>> businesseHr;
  final String socialId;



  const Verification({super.key,
    required this.fName,
    required this.email,
    required this.phone,
    required this.pass,
    required this.type,
    required this.role ,
    required this.businessName,
    required this.informalName,
    required this.streetAdd,
    required this.city,
    required this.state,
    required this.zipcode,
    required this.pdfFile,
    required this.businesseHr,
    required this.socialId,
  });

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {


  late String fName;
  late String email;
  late String phone;
  late String pass;
  late String type;
  late String role;
  late String businessName;
  late String informalName;
  late String streetAdd;
  late String city;
  late String state;
  late int zipcode;
  late String pdfFileName;
  late Map<String, List<String>> businesseHr;
  late String socialId;

  @override
  void initState() {
    super.initState();
    // Initialize properties
    fName = widget.fName;
    email = widget.email;
    phone = widget.phone;
    pass = widget.pass;
    type = widget.type;
    role = widget.role;
    businessName = widget.businessName;
    informalName = widget.informalName;
    streetAdd = widget.streetAdd;
    city = widget.city;
    state = widget.state;
    zipcode = widget.zipcode;
    pdfFileName = widget.pdfFile;
    businesseHr = widget.businesseHr;
    socialId = widget.socialId;
  }

  final uuid = const Uuid();

  // String _pdfFileName = '';
  // PlatformFile? _selectedPdf;
  // FilePickerResult? result;


  // Future<void> _pickPDF() async {
  //   try {
  //     result = await FilePicker.platform.pickFiles(
  //       type: FileType.custom,
  //       allowedExtensions: ['pdf'],
  //     );
  //
  //     if (result != null) {
  //       setState(() {
  //         _selectedPdf = result!.files.single;
  //         _pdfFileName = _selectedPdf?.name ?? '';
  //       });
  //     } else {
  //       // User canceled the file picking
  //       print('User canceled picking a file.');
  //     }
  //   } catch (e) {
  //     // Handle errors
  //     print('Error picking PDF file: $e');
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(23.38),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  height: 650,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("FarmerEats",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),

                      const SizedBox(height: 30.45,),

                      const Text('Signup 3 of 4',style: TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14)),

                      const SizedBox(height: 07.45,),

                      const Text('Verification',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700)),


                      const SizedBox(height: 30,),

                      const Text('Choose the hours your farm is open for pickups. This will allow customers to order deliveries.',style: TextStyle(color: Color.fromRGBO(0,0,0,0.3),fontSize: 14)),

                      const SizedBox(height: 30,),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Attach proof of registration',style: TextStyle(fontSize: 14),),
                          CircleAvatar(

                            radius: 25,
                            backgroundImage: AssetImage('assets/images/Ellipse 6.png'),
                            child: Image(image: AssetImage('assets/images/Group 61@1x.png')),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: ColorFile.fieldColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(pdfFileName,style: const TextStyle(decoration: TextDecoration.underline),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  color: Colors.white,
                  child: Row(
                    children: [

                      const Expanded(
                        flex: 1,
                        child: Text('Login',style: TextStyle(color: Color.fromRGBO(0,0,0,1),fontSize: 14,decoration: TextDecoration.underline),),),

                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(213, 113, 91, 1),
                                minimumSize: const Size(double.infinity, 50)),
                            child: const Text('Continue',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight:FontWeight.w500)),
                            onPressed: (){
                              if(pdfFileName.isEmpty){

                                FlutterToast().toastMsg("Attach Verification proof");

                              }else{
                                print(" email..................$email");
                                print(" email..................$fName");
                                print(" email..................$businesseHr");

                                postData(
                                    fullName: fName,
                                    email: email,
                                    phone: phone,
                                    password: pass,
                                    role: role,
                                    businessName: businessName,
                                    informalName: informalName,
                                    address: streetAdd,
                                    city: city,
                                    state: state,
                                    zipCode: zipcode,
                                    registrationProof: pdfFileName,
                                    businessHours: businesseHr,
                                    deviceToken: uuid.v4(),
                                    type: type,
                                    socialId: socialId,
                                ). then((value) {
                                  Get.offAll(()=> HomeSc(
                                    email: widget.email,
                                    pass: widget.pass,
                                  )
                                  );
                                }).onError((error, stackTrace){
                                  Get.snackbar("Error", "Something went wrong");
                                });
                              }
                            }

                          )
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<RegisterModel> postData({
    required String fullName,
    required String email,
    required String phone,
    required String password,
    required String role,
    required String businessName,
    required String informalName,
    required String address,
    required String city,
    required String state,
    required int zipCode,
    required String registrationProof,
    required Map<String, List<String>> businessHours,
    required String deviceToken,
    required String type,
    required String socialId,
  }) async {

    const String apiUrl = "https://sowlab.pw/assignment/user/register";

    final response = await http.post(Uri.parse(apiUrl),
        body: {
        "full_name": fullName,
        "email": email,
        "phone": phone,
        "password": password,
        "role": role,
        "business_name": businessName,
        "informal_name": informalName,
        "address": address,
        "city": city,
        "state": state,
        "zip_code": zipCode,
        "registration_proof": registrationProof,
        "business_hours": businessHours,
        "device_token": deviceToken,
        "type": type,
        "social_id": socialId,
        }
    );

        final jsonData = jsonDecode(response.body);
    final data = RegisterModel.fromJson(jsonData);
    return data;

  }
  }


  // void Api() async {
  //   await postData(
  //     fullName: "john doe",
  //     email: "johndoe@mail.com",
  //     phone: "+19876543210",
  //     password: "12345678",
  //     role: "farmer",
  //     businessName: "Dairy Farm",
  //     informalName: "London Dairy",
  //     address: "3663 Marshville Road",
  //     city: "Poughkeepsie",
  //     state: "New York",
  //     zipCode: 12601,
  //     registrationProof: "my_proof.pdf",
  //     businessHours: {
  //       "mon": ["8:00am - 10:00am", "10:00am - 1:00pm"],
  //       "tue": ["8:00am - 10:00am", "10:00am - 1:00pm"],
  //       "wed": ["8:00am - 10:00am", "10:00am - 1:00pm", "1:00pm - 4:00pm"],
  //       "thu": ["8:00am - 10:00am", "10:00am - 1:00pm", "1:00pm - 4:00pm"],
  //       "fri": ["8:00am - 10:00am", "10:00am - 1:00pm"],
  //       "sat": ["8:00am - 10:00am", "10:00am - 1:00pm"],
  //       "sun": ["8:00am -10:00am"],
  //     },
  //     deviceToken: "0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx",
  //     type: "email/facebook/google/apple",
  //     socialId: "0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx",
  //   );
  // }
