import 'package:brakedown_assist/Admin/Vehicle_navigation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class User_page extends StatefulWidget {
  const User_page({super.key, required this.id});
  final id;

  @override
  State<User_page> createState() => _User_pageState();
}

class _User_pageState extends State<User_page> {




  Future<void> Getbyid() async {
    User = await FirebaseFirestore.instance
        .collection("User_signup_details")
        .doc(widget.id)
        .get();
  }

  DocumentSnapshot? User;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: Getbyid(),
       builder: (context, snapshot) {
      if(snapshot.connectionState==ConnectionState.waiting){
        LinearProgressIndicator();
      }
      if(snapshot.hasError){
        Text('Error: ${snapshot.error}');
      }
         return Scaffold(
           backgroundColor: Colors.blue[100],
           body: Padding(
             padding: const EdgeInsets.only(right: 20, left: 20),
             child: SingleChildScrollView(
               child: Padding(
                 padding: const EdgeInsets.only(top: 30),
                 child: Container(
                   height: 810,
                   width: 500,
                   decoration: BoxDecoration(color: Colors.white),
                   child: Padding(
                     padding: const EdgeInsets.only(
                       right: 20,
                       left: 20,
                     ),
                     child: Column(
                       children: [
                         Row(
                           children: [
                             Container(
                                 height: 30,
                                 width: 30,
                                 child: InkWell(
                                     onTap: () {
                                       Navigator.push(context, MaterialPageRoute(builder: (context) {
                                         return Vehicle_Navigation();
                                       },));
                                     },
                                     child: Icon(Icons.arrow_back_ios_sharp))),
                           ],
                         ),
                         Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 10),
                               child: Container(
                                 width: 150,
                                 height: 150,
                                 decoration: BoxDecoration(
                                     color: Colors.blue.shade50,
                                     borderRadius: BorderRadius.circular(100),
                                     image: DecorationImage(
                                         image:
                                         AssetImage('assets/User.png'),
                                         fit: BoxFit.cover)),
                               ),
                             ),
                             SizedBox(
                               height: 5,
                             ),
                             Center(
                                 child: Text(
                                   '${User?["Email"]}',
                                   style: TextStyle(
                                       fontSize: 30, fontWeight: FontWeight.bold),
                                 )),
                             SizedBox(
                               height: 5,
                             ),
                             Center(
                                 child: Text(
                                   '${User?["Location"]}',
                                   style: TextStyle(
                                       fontSize: 20, fontWeight: FontWeight.bold),
                                 ))
                           ],
                         ),
                         SizedBox(
                           height: 30,
                         ),
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
                                     hintText: 'username',
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
                           height: 20,
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
                           height: 20,
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
                                     hintText: 'Example@gmail.com',
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
                           height: 30,
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 20, top: 50),
                           child: Row(
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
                               SizedBox(
                                 width: 45,
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
                         SizedBox(
                           height: 30,
                         ),
                       ],
                     ),
                   ),
                 ),
               ),
             ),
           ),
         );
       },

    );
  }
}


//
// import 'package:brakedown_assist/Admin/Notification.dart';
// import 'package:brakedown_assist/Admin/Vehicle_navigation.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class User_page extends StatefulWidget {
//   const User_page({super.key, required this.id});
//   final String id;
//
//   @override
//   State<User_page> createState() => _User_pageState();
// }
//
// class _User_pageState extends State<User_page> {
//   Map<String, dynamic>? user;
//   bool isLoading = true; // Track loading state
//
//   @override
//   void initState() {
//     super.initState();
//     Getbyid();
//   }
//
//   Future<void> Getbyid() async {
//     try {
//       DocumentSnapshot document = await FirebaseFirestore.instance
//           .collection("User_signup_details")
//           .doc(widget.id)
//           .get();
//
//       setState(() {
//         user = document.data() as Map<String, dynamic>?;
//         isLoading = false; // Set loading to false once data is loaded
//       });
//     } catch (e) {
//       // Handle any errors, maybe show a message
//       print("Error fetching user: $e");
//       setState(() {
//         isLoading = false; // Stop loading even if error occurs
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 40,
//         backgroundColor: Colors.blue.shade100,
//       ),
//       backgroundColor: Colors.blue[100],
//       body: Padding(
//         padding: const EdgeInsets.only(right: 20, left: 20),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.only(top: 0),
//             child: Container(
//               height: 810,
//               width: 500,
//               decoration: BoxDecoration(
//
//                   borderRadius: BorderRadius.circular(20.r),
//                   color: Colors.white),
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 20, left: 20),
//                 child: Column(
//                   children: [
//                     if (isLoading)
//                       CircularProgressIndicator() // Show loading spinner if data is still being fetched
//                     else
//                       Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(top: 30),
//                             child: Container(
//                               width: 150,
//                               height: 150,
//                               decoration: BoxDecoration(
//                                 color: Colors.blue.shade50,
//                                 borderRadius: BorderRadius.circular(100),
//                                 image: DecorationImage(
//                                   image: NetworkImage(user?['Profile'] ?? 'No Email'),
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Center(
//                             child: Text(
//                               user?['Name'] ?? 'No Email',
//                               style: TextStyle(
//                                   fontSize: 30, fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Center(
//                             child: Text(
//                               user?['Location'] ?? 'Location not available',
//                               style: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ],
//                       ),
//                     SizedBox(height: 30),
//                     buildTextField('Username', user?['Name'] ?? 'No Email'),
//                     SizedBox(height: 20),
//                     buildTextField('Phone Number', user?['Number'] ?? 'No Email'),
//                     SizedBox(height: 20),
//                     buildTextField('Email Address', user?['Email'] ?? 'No Email'),
//                     SizedBox(height: 30),
//                     buildActionButtons(),
//                     SizedBox(height: 30),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildTextField(String label, String hint) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//         ),
//         SizedBox(height: 3),
//         TextFormField(
//           readOnly: true,
//           decoration: InputDecoration(
//             fillColor: Colors.blue.shade50,
//             hintText: hint,
//             hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
//             filled: true,
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(color: Colors.black),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget buildActionButtons() {
//     return Padding(
//       padding: const EdgeInsets.only(left:20,top: 50,right: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           buildActionButton('Accept', Colors.blue.shade500),
//           buildActionButton('Reject', Colors.red.shade400),
//         ],
//       ),
//     );
//   }
//
//   Widget buildActionButton(String label, Color? color) {
//     return Container(
//       height: 50,
//       width: 130,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(6),
//         color: color,
//       ),
//       child: Center(
//         child: Text(
//           label,
//           style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.white),
//         ),
//       ),
//     );
//   }
// }
