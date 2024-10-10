import 'package:brakedown_assist/Admin/Notification.dart';
import 'package:brakedown_assist/Admin/Vehicle_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Mechanic_page extends StatefulWidget {
  const Mechanic_page({super.key});

  @override
  State<Mechanic_page> createState() => _Mechanic_pageState();
}

class _Mechanic_pageState extends State<Mechanic_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.blue.shade100,
      ),
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              height: 850,
              width: 500,
              decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 20
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image:
                                  AssetImage('assets/User.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Center(
                            child: Text(
                              'Name',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )),
                        Center(
                            child: Text(
                              'Location',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Username',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'Username',
                                    focusColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            style: BorderStyle.none,
                                            color: Colors.white))),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Phone Number',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: '0000000000',
                                    focusColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                        BorderSide(color: Colors.black))),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Email Address',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'Example@gmmail.com',
                                    focusColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                        BorderSide(color: Colors.black))),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Work Experience',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'experience',
                                    focusColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                        BorderSide(color: Colors.black))),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Work Shop Name',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'Shop name',
                                    focusColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                        BorderSide(color: Colors.black))),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Your Location',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'enter your location',
                                    focusColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                        BorderSide(color: Colors.black))),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 50,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.blue[300],
                              ),
                              child: Center(
                                  child: Text(
                                    'Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 50,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.red[200],
                              ),
                              child: Center(
                                  child: Text(
                                    'reject',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
