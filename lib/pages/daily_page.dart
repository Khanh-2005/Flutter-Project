import 'package:flutter/material.dart';
import 'package:flutter_helloapp/json/daily_json.dart';
import 'package:flutter_helloapp/theme/colors.dart';
import 'package:flutter_helloapp/json/day_month.dart';

// ignore: use_key_in_widget_constructors
class DailyPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _DailyPageState createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  int activeDay = 3;
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Scaffold(backgroundColor: grey.withOpacity(0.05), body: getBody());
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
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
                        "Daily Transaction",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: black,
                        ),
                      ),
                      Icon(Icons.search, size: 30, color: black),
                    ],
                  ),
                  SizedBox(height: 25),

                  // Calendar
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(days.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            activeDay = index;
                          });
                        },
                        // ignore: sized_box_for_whitespace
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 40) / 7,
                          child: Column(
                            children: [
                              Text(
                                days[index]['label'],
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: activeDay == index
                                      ? primary
                                      : Colors.transparent,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: activeDay == index
                                        ? primary
                                        // ignore: deprecated_member_use
                                        : black.withOpacity(0.1),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    days[index]['day'],
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: activeDay == index ? white : black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: List.generate(daily.length, (index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: (size.width - 40) * 0.7,
                          child: Row(
                            children: [
                              // Icon
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // ignore: deprecated_member_use
                                  color: grey.withOpacity(0.1),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    daily[index]['icon'],
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),

                              // Name + Date
                              // ignore: sized_box_for_whitespace
                              Container(
                                width: (size.width - 90) * 0.5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      daily[index]['name'],
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      daily[index]['date'],
                                      style: TextStyle(
                                        fontSize: 12,
                                        // ignore: deprecated_member_use
                                        color: black.withOpacity(0.5),
                                        fontWeight: FontWeight.w400,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Price
                        // ignore: sized_box_for_whitespace
                        Container(
                          width: (size.width - 40) * 0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                daily[index]['price'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 65, top: 8),
                      child: Divider(thickness: 0.8),
                    ),
                  ],
                );
              }),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 16,
                      // ignore: deprecated_member_use
                      color: black.withOpacity(0.4),
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Spacer(),

                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "\$3544.00",
                    style: TextStyle(
                      fontSize: 20,
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
