// import 'dart:convert';
// import 'package:api3/data/model/testData.dart';
// import 'package:http/http.dart' as http;

// class ApiService {
//   List<TestData> testData;

//   static Future<List<TestData>> getTestData() async {
//     final res = await http.get(
//       Uri.parse("https://api2021.herokuapp.com/"),
//     );
//     if (res.statusCode == 200) return testDataFromJson(res.body);
//     return null;
//   }

//   static Future<List<TestData>> postTestData({
//     String name,
//     String email,
//   }) async {
//     final res = await http.post(
//       Uri.parse("https://api2021.herokuapp.com/post"),
//       headers: {
//         'Content-Type': 'application/json',
//       },
//       body: jsonEncode(<String, dynamic>{
//         "name": name,
//         "email": email,
//         "age": "age",
//         "laptop": "laptop",
//         "gender": "gender",
//       }),
//     );
//     if (res.statusCode == 200) {
//       TestData.fromJson(json.decode(res.body));
//     }
//     return null;
//   }

//   static Future<List<TestData>> updateTestData({
//     String id,
//     String name,
//     String email,
//   }) async {
//     final res = await http.put(
//       Uri.parse("https://api2021.herokuapp.com/put/$id"),
//       headers: {
//         'Content-Type': 'application/json',
//       },
//       body: jsonEncode(<String, dynamic>{
//         "name": name,
//         "email": email,
//         "age": "age",
//         "laptop": "laptop",
//         "gender": "gender",
//       }),
//     );

//     if (res.statusCode == 200) {
//       TestData.fromJson(json.decode(res.body));
//     }
//     return null;
//   }

//   static Future<List<TestData>> deleteTestData({String id}) async {
//     final res = await http.delete(
//       Uri.parse("https://api2021.herokuapp.com/delete/$id"),
//       headers: {
//         'Content-Type': 'application/json',
//       },
//     );
//     if (res.statusCode == 200) {
//       TestData.fromJson(json.decode(res.body));
//     }
//     return null;
//   }
// }