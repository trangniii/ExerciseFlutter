import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> cryptoList = ['BTC', 'ETH', 'LTC'];
const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '3053ef31-cad4-48cf-9605-d6b0a88702b5';

class CoinData {
  Future<Map<String, String>> getCoinData(String selectedCurrency) async {
    Map<String, String> cryptoPrices = {};

    for (String crypto in cryptoList) {
      Uri requestURL =
          Uri.parse('$coinAPIURL/$crypto/$selectedCurrency?apikey=$apiKey');
      http.Response response = await http.get(requestURL);

      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        double price = decodedData['rate'];
        cryptoPrices[crypto] = price.toStringAsFixed(0);
      } else {
        print('Error: ${response.statusCode}');
        throw 'Problem with the get request';
      }
    }
    return cryptoPrices;
  }
}
