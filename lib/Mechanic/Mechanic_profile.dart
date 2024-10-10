import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Mechanic_navigation.dart';
import 'Mechanic_profile_edit.dart';

class Mechanic_profile extends StatefulWidget {
  const Mechanic_profile({super.key});

  @override
  State<Mechanic_profile> createState() => _Mechanic_profileState();
}

class _Mechanic_profileState extends State<Mechanic_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Mechanic_navigation();
                        },));

                      },
                      icon: Icon(
                        CupertinoIcons.back,
                        color: Colors.black,
                        size: 35.sp,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Mechanic_profile_edit();
                        },));
                      },
                      icon: Icon(
                        Icons.edit_note,
                        color: Colors.black,
                        size: 35.sp,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30,top: 20),
              child: Column(
                children: [
                  Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage("assets/User.png"),fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: TextFormField(
                              readOnly: true,
                              decoration: InputDecoration(
                                  hintText: 'Name',
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
                        height: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          readOnly: true,
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
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          readOnly: true,
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
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                              hintText: 'Email',
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
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                              hintText: 'Experience',
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
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                              hintText: 'Location',
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
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                              hintText: 'Shop Name',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Mechanic_navigation();
                        },));
                      },
                      child: Container(
                        height: 50.h,
                        width: 220.w,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                            child: Text(
                              'DONE',
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
    );
  }
}