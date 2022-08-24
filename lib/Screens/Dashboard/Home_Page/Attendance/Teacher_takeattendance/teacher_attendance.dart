import 'dart:async';

import 'package:diit_portal/Utility/App_Colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class TeacherAttendance extends StatelessWidget {

  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(const Duration(seconds: 2), () {
      _btnController.success();
    });
  }

  final TextEditingController _teacheremailcontroller = TextEditingController();
  final TextEditingController _teacherpasswordcontroller = TextEditingController();


  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorChanger.scaffoldcolor,
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Teacher Login',style: TextStyle(fontSize: 25,color: Colors.white,fontFamily:"Poppins" ,fontWeight: FontWeight.w500),),
              const SizedBox(
                height: 20,
              ),

              CircleAvatar(
             radius: 50,
                backgroundColor: Colors.white,
                child: ClipOval(

                child: Image.asset('assets/checklist 1.png',height:100,width: 100,),
              ),),
              const SizedBox(
                height: 40,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  controller: _teacheremailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.indigo,
                      size: 25,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Email cannot be empty";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  controller: _teacherpasswordcontroller,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.indigo,
                      size: 25,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Passwort cannot be empty";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RoundedLoadingButton(
                elevation: 2,
                 color: const Color(0xff4d7c92),
                child: const Text('Login',

                    style: TextStyle(color: Colors.white,fontSize: 20)),
                controller: _btnController,
                 onPressed:()=>Get.toNamed('/TeacherDashbord',),



              ),
            ],
          ),
        ),
      ),
    );
  }
}
