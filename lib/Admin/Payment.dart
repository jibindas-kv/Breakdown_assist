import 'package:brakedown_assist/Admin/Mechanic.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Profile.png"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
            Expanded(
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance.collection("User_request").where("Payment",isEqualTo: 5).snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }
                    final Payment = snapshot.data?.docs ?? [];
                    return ListView.builder(
                      itemCount: Payment.length,
                      itemBuilder: (context, index) {
                        final doc = Payment[index];
                        final Transactions = doc.data() as Map<String, dynamic>;
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${Transactions["User_name"] ?? ""}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text("${Transactions["Date"] ?? ""}")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.attach_money),
                                      Text(
                                        "${Transactions["Amount"] ?? ""}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${Transactions["Work"] ?? ""}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${Transactions["Mech_name"] ?? ""}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
