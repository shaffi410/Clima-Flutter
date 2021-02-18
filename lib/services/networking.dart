import 'package:http/http.dart' as http;
import 'dart:convert';

double latitude;
double longitude;

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

    // if the response was favorable (200 means "good")
    if (response.statusCode == 200) {
      String data = response.body;
      print(jsonDecode(data));
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
