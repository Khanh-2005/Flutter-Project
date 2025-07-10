import 'package:flutter/material.dart';
import 'package:flutter_helloapp/json/budget_json.dart';
import 'package:flutter_helloapp/theme/colors.dart';
import 'package:flutter_helloapp/json/day_month.dart';

class BudgetPage extends StatefulWidget {
  @override
  State<BudgetPage> createState() => _BudgetPageState();
}

class _BudgetPageState extends State<BudgetPage> {
  int activeMonth = 4;
  @override
  Widget build(BuildContext context) {
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
                        "Stats",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: black,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.add, size: 30, color: black),
                          SizedBox(width: 10),
                          Icon(Icons.search, size: 30, color: black),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 25),

                  // Calendar
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(months.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            activeMonth = index;
                          });
                        },
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 40) / 6,
                          child: Column(
                            children: [
                              Text(
                                months[index]['label'],
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color: activeMonth == index
                                      ? primary
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: activeMonth == index
                                        ? primary
                                        : black.withOpacity(0.1),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 7,
                                    bottom: 7,
                                    left: 12,
                                    right: 12,
                                  ),
                                  child: Text(
                                    months[index]['month'],
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: activeMonth == index
                                          ? white
                                          : black,
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

          SizedBox(height: 20),
          Column(
            children: List.generate(budget_json.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: grey.withOpacity(0.01),
                        spreadRadius: 10,
                        blurRadius: 3,
                        // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          budget_json[index]['name'],
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: grey,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  budget_json[index]['price'],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    budget_json[index]['label_percentage'],
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "\$10000.00",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: grey,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 15),
                        Stack(
                          children: [
                            Container(
                              width: size.width - 40,
                              height: 4,
                              decoration: BoxDecoration(
                                color: primary.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            Container(
                              width:
                                  (size.width - 40) *
                                  budget_json[index]['percentage'],
                              height: 4,
                              decoration: BoxDecoration(
                                color: budget_json[index]['color'],
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
