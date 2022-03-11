import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sofort/modeles_api/model_api_contact/model_contact.dart';




class ApiContact{
  static Future<Modelcompany?> getcontact({
    required String companyNumber,
  }) async {
    var url =Uri.https('api.sofort-handelsregister.com:3002', '/api/companies/contact/$companyNumber', {'q': '{http}'});
    
      var response = await http.get(url,headers: {
        "content-type": "application/json",
        "accept": "application/json",
        "x-api-key": "\$2a\$10\$orQ9c.hfVRqgdZAP66o98uylP1rwkvDIsfwKrtp/zR3Zkt46ZZH5q"
      },);
      print(response.request);
      if (response.statusCode == 200) {
        // If the call to the server was successful, parse the JSON
     
        print(response.body);
        
        return Modelcompany.fromJson(json
            .decode(response.body));
      } else if(response.statusCode == 422){
        return Modelcompany(phoneNumber: "keine Daten verfügbar", email: "keine Daten verfügbar", website: "keine Daten verfügbar", mobileNumber: "keine Daten verfügbar");
      }
      else {
        // If that call was not successful, throw an error.
        throw Exception('Request failed with status: ${response.statusCode}.');
      }
  }
}