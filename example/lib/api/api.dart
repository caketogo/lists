import 'dart:convert' show json, base64, ascii;
import 'package:http/http.dart' as http;
import 'dart:developer' as developer;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// Create storage
final storage = new FlutterSecureStorage();



class Network{
  final String api_url = 'https://www.seatingplanner.co.uk/api/';

  Future <bool> login(data) async {
    var url = api_url + 'login';
    var res = await http.post(
        url,
        body: data
    );
    /**
     * parse json so we get the token
     * user and events into the storage.
     */
    
  return true;
  }


}