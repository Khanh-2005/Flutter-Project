import 'package:flutter/material.dart';
import 'package:flutter_helloapp/theme/colors.dart';
import 'package:flutter_helloapp/json/create_budget_json.dart';

// ignore: use_key_in_widget_constructors
class CreateBudgetPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _CreateBudgetPageState createState() => _CreateBudgetPageState();
}

class _CreateBudgetPageState extends State<CreateBudgetPage> {
  int activeCategory = 0;
  // ignore: prefer_final_fields
  TextEditingController _budgetName = TextEditingController(text: "Shopping");
  // ignore: prefer_final_fields
  TextEditingController _budgetCost = TextEditingController(text: "\$780.00");

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Scaffold(backgroundColor: grey.withOpacity(0.05), body: getBody());
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        "Create Budget",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: black,
                        ),
                      ),
                      Icon(Icons.search, size: 30, color: black),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Choose Category",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                // ignore: deprecated_member_use
                color: black.withOpacity(0.5),
              ),
            ),
          ),

          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(categories.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      activeCategory = index;
                    });
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 150,
                      height: 170,
                      decoration: BoxDecoration(
                        color: white,
                        border: Border.all(
                          color: activeCategory == index
                              ? primary
                              : Colors.transparent,
                          width: activeCategory == index ? 2 : 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            // ignore: deprecated_member_use
                            color: grey.withOpacity(0.01),
                            spreadRadius: 10,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                          left: 25,
                          right: 25,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // ignore: deprecated_member_use
                                color: grey.withOpacity(0.15),
                              ),
                              child: Center(
                                child: Image.asset(
                                  categories[index]['icon'],
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            Text(
                              categories[index]['name'],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),

          SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Budget name",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    // ignore: deprecated_member_use
                    color: black.withOpacity(0.6),
                  ),
                ),
                TextField(
                  controller: _budgetName,
                  cursorColor: black,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your budget name",
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: size.width - 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Enter your budget",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              // ignore: deprecated_member_use
                              color: black.withOpacity(0.6),
                            ),
                          ),
                          TextField(
                            controller: _budgetCost,
                            cursorColor: black,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: black,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter your budget name",
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 20),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(Icons.arrow_forward, color: white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
