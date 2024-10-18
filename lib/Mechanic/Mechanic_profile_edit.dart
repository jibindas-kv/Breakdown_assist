import 'package:brakedown_assist/Mechanic/Mechanic_profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Mechanic_navigation.dart';

class Mechanic_profile_edit extends StatefulWidget {
  const Mechanic_profile_edit({super.key, required this.id});
  final id;

  @override
  State<Mechanic_profile_edit> createState() => _Mechanic_profile_editState();
}

class _Mechanic_profile_editState extends State<Mechanic_profile_edit> {
  @override
  initState() {
    super.initState();
    Getbyid();
  }

  Future<void> Getbyid() async {
    DocumentSnapshot Profile = await FirebaseFirestore.instance
        .collection("Mechanic_signup_details")
        .doc(widget.id)
        .get();
    if (Profile.exists) {
      Map<String, dynamic> Mechid = Profile.data() as Map<String, dynamic>;
      setState(() {
        Name_ctrl.text = Mechid["Name"];
        Number_ctrl.text = Mechid["Number"];
        Email_ctrl.text = Mechid["Email"];
        Location_ctrl.text = Mechid["Location"];
        Experience_ctrl.text = Mechid["Experience"];
        Shop_ctrl.text = Mechid["Shop_name"];
        Password_ctrl = Mechid["Password"];
      });
    }
  }

  Future<void> Update_task() async {
    FirebaseFirestore.instance.collection("Mechanic_signup_details").doc(widget.id).update({
      'Name': Name_ctrl.text,
      'Number': Number_ctrl.text,
      'Email': Email_ctrl.text,
      'Location': Location_ctrl.text,
      'Experience': Experience_ctrl.text,
      'Shop_name': Shop_ctrl.text,
      'Password': Password_ctrl.text,
    });
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return Mechanic_profile();
    },));
  }

  var Name_ctrl = TextEditingController();
  var Number_ctrl = TextEditingController();
  var Email_ctrl = TextEditingController();
  var Location_ctrl = TextEditingController();
  var Experience_ctrl = TextEditingController();
  var Shop_ctrl = TextEditingController();
  var Password_ctrl = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          CupertinoIcons.back,
                          color: Colors.black,
                          size: 35.sp,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Column(
                  children: [
                    Container(
                      width: 100.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage("assets/User.png"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Enter Username',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextFormField(
                            controller: Name_ctrl,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Any Value";
                              }
                            },
                            decoration: InputDecoration(
                                hintText: 'Username',
                                focusColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.r)),
                                fillColor: Colors.blue.shade50,
                                filled: true),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Enter Phone number',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextFormField(
                            controller: Number_ctrl,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Any Value";
                              }
                            },
                            decoration: InputDecoration(
                                hintText: 'Phone number',
                                focusColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.r)),
                                fillColor: Colors.blue.shade50,
                                filled: true),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Enter your email',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextFormField(
                            controller: Email_ctrl,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Any Value";
                              }
                            },
                            decoration: InputDecoration(
                                hintText: 'Enter email',
                                focusColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.r)),
                                fillColor: Colors.blue.shade50,
                                filled: true),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Enter Location',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextFormField(
                            controller: Location_ctrl,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Any Value";
                              }
                            },
                            decoration: InputDecoration(
                                hintText: 'Location',
                                focusColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.r)),
                                fillColor: Colors.blue.shade50,
                                filled: true),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Enter your Work Experience',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextFormField(
                            controller: Experience_ctrl,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Any Value";
                              }
                            },
                            decoration: InputDecoration(
                                hintText: 'Enter your Experience',
                                focusColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.r)),
                                fillColor: Colors.blue.shade50,
                                filled: true),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Enter your Work Shop Name',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextFormField(
                            controller: Shop_ctrl,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Any Value";
                              }
                            },
                            decoration: InputDecoration(
                                hintText: 'Enter your Shop Name',
                                focusColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.r)),
                                fillColor: Colors.blue.shade50,
                                filled: true),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Enter your password',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextFormField(
                            controller: Password_ctrl,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Any Value";
                              }
                            },
                            decoration: InputDecoration(
                                hintText: 'Enter your password',
                                focusColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.r)),
                                fillColor: Colors.blue.shade50,
                                filled: true),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: InkWell(
                        onTap: () {
                          if (formkey.currentState!.validate()) {
                            Update_task();
                          }
                        },
                        child: Container(
                          height: 50.h,
                          width: 220.w,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Center(
                              child: Text(
                            'SUBMIT',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
