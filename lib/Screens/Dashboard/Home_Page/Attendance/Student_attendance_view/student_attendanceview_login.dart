

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class StudentViewAttendance extends StatefulWidget {
  const StudentViewAttendance({Key? key}) : super(key: key);

  @override
  State<StudentViewAttendance> createState() => _StudentViewAttendanceState();
}

class _StudentViewAttendanceState extends State<StudentViewAttendance> {

  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(Duration(seconds: 2), () {
      _btnController.success();
    });
  }
  final _formkey = GlobalKey<FormState>();

  TextEditingController _studentemailcontroller = TextEditingController();
  TextEditingController _studentpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9e7e7),
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Student Login',style: TextStyle(fontSize: 25,color: Colors.black,fontFamily:"Poppins" ,fontWeight: FontWeight.w500),),
              SizedBox(
                height: 20,
              ),

              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: ClipOval(

                  child: Image.asset('assets/checklist 1.png',height:100,width: 100,),
                ),),
              SizedBox(
                height: 40,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  controller: _studentemailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
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
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  controller: _studentpasswordcontroller,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
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
              SizedBox(
                height: 20,
              ),
              RoundedLoadingButton(
                elevation: 2,
                color: Color(0xff4d7c92),
                child: Text('Login',

                    style: TextStyle(color: Colors.white,fontSize: 20)),
                controller: _btnController,
                onPressed:()=>Get.toNamed('/CourseAttendanceView',),
              ),


            ],
          ),
        ),
      ),
    );
  }
}