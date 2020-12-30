import 'dart:convert' show json, base64, ascii;
import 'package:http/http.dart' as http;
import 'dart:developer' as developer;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:json_traverse/json_traverse.dart';

// Create storage
final storage = new FlutterSecureStorage();



class Network{
  final String api_url = 'https://www.seatingplanner.co.uk/api/';

  /**
   * Attempt to Login
   */
  Future <bool> login(data) async {
    // Build URL
    var url = api_url + 'login';

    // Make the request
    var res = await http.post(
        url,
        body: data
    );

    // Check status
    if(res.statusCode != 200){
      return false;
    }
    else {
      var body = JSONTraverse(res.body);

      // Get our data from the response body
      var token = body.query('meta')['token'];
      var user = body.query('data');

      // Set in storage..
      storage.write(key: 'token', value: token);
      storage.write(key: 'name', value: user['name'] );

      return true;
    }

  }


  Future <bool> logout() {
    print('logout');
  }


}