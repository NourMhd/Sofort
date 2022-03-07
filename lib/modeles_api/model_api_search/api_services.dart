import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sofort/modeles_api/model_api_info/model_info.dart';
import 'package:sofort/modeles_api/model_api_search/model.dart';


class ApiService {
  static Future<ListCompanies?> postCompanies({
    required String company_name,
  }) async {
    // https://developers.google.com/books/docs/overview
  
    var url = Uri.https('api.sofort-handelsregister.com:3002', '/api/companies',
        {'q': '{http}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.post(
      url,
      body: json.encode({
        "company_name": company_name,
      }),
      headers: {
        "content-type": "application/json",
        "accept": "application/json",
      },
    );
    if (response.statusCode == 200) {
   
      final list = ListCompanies.fromJson(json.decode(response.body));
      

      return list;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
  
}
