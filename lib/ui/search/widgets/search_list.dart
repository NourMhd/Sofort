import 'package:flutter/material.dart';
import 'package:sofort/app_routes.dart';

import 'package:sofort/modeles_api/model_api_info/api_info.dart';
import 'package:sofort/modeles_api/model_api_info/model_info.dart';

class ListCard extends StatelessWidget {
  String company_name;
  String register_number;
  String company_number;
  String status;
  VoidCallback onTap;
  ListCard(
      {Key? key,
      required this.company_name,
      required this.register_number,
      required this.company_number,
      required this.status,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ElevatedButton(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: const Icon(
                  Icons.article,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    company_name,
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "   " + register_number,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 107, 107, 107),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "   " + company_number,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 107, 107, 107),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "   " + status,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 107, 107, 107),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                ],
              ))
            ],
          ),
          style: ElevatedButton.styleFrom(
              side: const BorderSide(
                color: Color.fromARGB(255, 224, 224, 224),
                style: BorderStyle.solid,
                width: 0.0,
              ),
              primary: Colors.white,
              onPrimary: Colors.deepOrange,
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)))),
          onPressed: onTap,
        ));
  }
}
