import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_helloapp/theme/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_helloapp/json/profile_json.dart';

// ignore: use_key_in_widget_constructors
class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // ignore: prefer_final_fields
  TextEditingController _email = TextEditingController(text: email);
  // ignore: prefer_final_fields
  TextEditingController _dateOfBirth = TextEditingController(text: dateOfBirth);
  // ignore: prefer_final_fields
  TextEditingController _password = TextEditingController(text: password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: deprecated_member_use
      backgroundColor: grey.withOpacity(0.05),
      body: getBody(),
    );
  }

  Widget getBody() {
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width,
            decoration: BoxDecoration(
              color: white,
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: grey.withOpacity(0.01),
                  spreadRadius: 10,
                  blurRadius: 3,
                  // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 60,
                right: 20,
                left: 20,
                bottom: 25,
              ),
              child: Column(
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: black,
                        ),
                      ),
                      Icon(Icons.settings_outlined, size: 30, color: black),
                    ],
                  ),

                  SizedBox(height: 25),
                  Row(
                    children: [
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: (size.width - 40) * 0.4,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: Stack(
                            children: [
                              RotatedBox(
                                quarterTurns: -2,
                                child: CircularPercentIndicator(
                                  circularStrokeCap: CircularStrokeCap.round,
                                  // ignore: deprecated_member_use
                                  backgroundColor: grey.withOpacity(0.3),
                                  radius: 70.0,
                                  lineWidth: 6.0,
                                  percent: 0.58,
                                  progressColor: primary,
                                ),
                              ),

                              Positioned(
                                top: 13,
                                left: 13,
                                child: Container(
                                  width: 114,
                                  height: 114,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/avatar1.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // ignore: sized_box_for_whitespace
                      Container(
                        width: (size.width - 40) * 0.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontSize: 20,
                                color: black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Credit Score: $credit",
                              style: TextStyle(
                                fontSize: 20,
                                // ignore: deprecated_member_use
                                color: black.withOpacity(0.4),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 25),
                  Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: grey.withOpacity(0.01),
                          spreadRadius: 10,
                          blurRadius: 3,
                          // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 25,
                        bottom: 25,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "VietcomBank VN",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "\$4593.50",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: white),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Update",
                                style: TextStyle(color: white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: grey,
                  ),
                ),
                TextField(
                  controller: _email,
                  cursorColor: black,
                  style: TextStyle(
                    color: black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(border: InputBorder.none),
                ),

                SizedBox(height: 20),
                Text(
                  "Date of Birth",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: grey,
                  ),
                ),
                TextField(
                  controller: _dateOfBirth,
                  cursorColor: black,
                  style: TextStyle(
                    color: black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(border: InputBorder.none),
                ),

                SizedBox(height: 20),
                Text(
                  "Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: grey,
                  ),
                ),
                TextField(
                  controller: _password,
                  obscureText: true,
                  cursorColor: black,
                  style: TextStyle(
                    color: black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
