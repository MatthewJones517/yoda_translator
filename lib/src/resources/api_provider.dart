import 'dart:convert';
import 'package:http/http.dart' show Client;

class APIProvider {
  final String root = "https://yodish.p.rapidapi.com/yoda.json?text=";

  Future<Map<String, dynamic>> callAPI(String text) async {
    // Build & encode URL
    final String url = Uri.encodeFull("$root$text");

    // Create a new client object which will ultimately make our request
    Client client = Client();

    // Set Up Headers
    Map<String, String> headers = {
      "Content-Type": "application/x-www-form-urlencoded",
      "x-rapidapi-host": "yodish.p.rapidapi.com",
      "x-rapidapi-key": "22f4edda2amshe3183f60ad0df3bp13dc9fjsn026d79530589",
    };

    // Make API Request
    var response = await client.post(url, headers: headers);

    // Parse the JSON
    Map<String, dynamic> returnValue = json.decode(response.body);

    // Return API response
    return returnValue;
  }
}
