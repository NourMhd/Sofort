import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sofort/modeles_api/model_api_info/model_info.dart';



class ApiInfo{
  static Future<ModelCompanyInfo?> getOneCompany({
    required String companyNumber,
  }) async {
    var url =Uri.https('api.sofort-handelsregister.com:3002', '/api/companies/fullDetails/$companyNumber', {'q': '{http}'});
      var response = await http.get(url,headers: {
        "content-type": "application/json",
        "accept": "application/json",
        "x-api-key": "\$2a\$10\$orQ9c.hfVRqgdZAP66o98uylP1rwkvDIsfwKrtp/zR3Zkt46ZZH5q"
      },);
      print(response.request);
      if (response.statusCode == 200) {
        // If the call to the server was successful, parse the JSON
     
        print(response.body);
        
        return ModelCompanyInfo.fromJson(json
            .decode(response.body));
      }else if(response.statusCode == 422){
        return ModelCompanyInfo(bilans:null,dK: null);
        
      } else {
        // If that call was not successful, throw an error.
        throw Exception('Request failed with status: ${response.statusCode}.');
      }
  }
}