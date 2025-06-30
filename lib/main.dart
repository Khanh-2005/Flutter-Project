import 'package:flutter/material.dart';
import 'package:flutter_helloapp/services/api_client.dart';
import 'package:flutter_helloapp/widgets/drop_down.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false);
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiClient client = ApiClient();

  Color mainColor = Color(0xFF212936);
  Color secondaryColor = Color(0xFF2849E5);

  List<String>? currencies;
  String? from;
  String? to;

  double rate = 0.0;
  String? result;

  final TextEditingController amountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    client
        .getCurrencies()
        .then((list) {
          setState(() {
            currencies = list;
            from = currencies![0];
            to = currencies![1];
          });
        })
        .catchError((e) {
          setState(() {
            result = "Lỗi tải dữ liệu: $e";
          });
        });
  }

  Future<void> convertCurrency() async {
    final input = amountController.text;
    if (input.isEmpty || from == null || to == null) return;

    try {
      final double? rateVal = await client.getRate(from!, to!);
      if (rateVal != null) {
        setState(() {
          rate = rateVal;
          double amount = double.tryParse(input) ?? 0.0;
          result = (amount * rate).toStringAsFixed(3);
        });
      }
    } catch (e) {
      setState(() {
        result = "Không lấy được tỷ giá: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Currency Converter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: currencies == null || from == null || to == null
                    ? Center(child: CircularProgressIndicator())
                    : Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              controller: amountController,
                              onSubmitted: (value) => convertCurrency(),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                labelText: "Input value to convert",
                                labelStyle: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 18.0,
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              children: [
                                Expanded(
                                  child: customDropDown(currencies!, from!, (
                                    val,
                                  ) {
                                    setState(() {
                                      from = val;
                                    });
                                    convertCurrency();
                                  }),
                                ),
                                SizedBox(width: 12.0),
                                IconButton(
                                  icon: Icon(
                                    Icons.swap_horiz,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      final temp = from;
                                      from = to;
                                      to = temp;
                                    });
                                    convertCurrency();
                                  },
                                ),
                                SizedBox(width: 12.0),
                                Expanded(
                                  child: customDropDown(currencies!, to!, (
                                    val,
                                  ) {
                                    setState(() {
                                      to = val;
                                    });
                                    convertCurrency();
                                  }),
                                ),
                              ],
                            ),
                            SizedBox(height: 50.0),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Result",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    result ?? '',
                                    style: TextStyle(
                                      fontSize: 36.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
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
    );
  }
}
