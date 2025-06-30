import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  final Uri currencyURL = Uri.https(
    "v6.exchangerate-api.com",
    "/v6/d81291195d8207432a25cf67/latest/USD",
  );

  Future<List<String>> getCurrencies() async {
    http.Response res = await http.get(currencyURL);
    if (res.statusCode == 200) {
      var body = jsonDecode(res.body);
      var rates = body["conversion_rates"];
      if (rates != null && rates is Map<String, dynamic>) {
        return rates.keys.toList();
      } else {
        throw Exception("conversion_rates not found");
      }
    } else {
      throw Exception("Failed to load currencies");
    }
  }

  Future<double?> getRate(String from, String to) async {
    final Uri rateUrl = Uri.https(
      "v6.exchangerate-api.com",
      "/v6/d81291195d8207432a25cf67/pair/$from/$to",
    );
    http.Response res = await http.get(rateUrl);
    if (res.statusCode == 200) {
      var body = jsonDecode(res.body);
      return body["conversion_rate"]; // Đây là key đúng
    } else {
      throw Exception("Failed to load rate");
    }
  }
}
