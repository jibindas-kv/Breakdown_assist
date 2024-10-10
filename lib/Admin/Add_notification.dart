import 'package:brakedown_assist/Admin/Vehicle_navigation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Add_notification extends StatefulWidget {
  const Add_notification({super.key});

  @override
  State<Add_notification> createState() => _Add_notificationState();
}

class _Add_notificationState extends State<Add_notification> {
  var Matter_ctrl = TextEditingController();
  var Details_ctrl = TextEditingController();

  String formattedDate = DateFormat('dd-MM-yyyy – kk:mm').format(DateTime.now());

  Future<void> Add_notification()async{
    FirebaseFirestore.instance.collection("Admin_notification").add({
      "Matter":Matter_ctrl.text,
      "Matter_details":Details_ctrl.text,
      "createdAt": formattedDate,
    });
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return Vehicle_Navigation();
      },
    ));
    print("Data Added Successfully/////////////////");
  }
  final formkey = GlobalKey<FormState>(); //for validations
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Enter Matter",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: Matter_ctrl,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Any Value";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: ("Matter"),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(0)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, bottom: 40, top: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Enter Content",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 400,
                      child: TextFormField(
                        controller: Details_ctrl,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Any Value";
                          }
                        },
                        maxLines: 20, //or null
                        decoration: InputDecoration.collapsed(
                            hintText: "  content",
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(0)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        Add_notification();

                      }
                    },
                    child: Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text("Submit",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900, fontSize: 20))),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
