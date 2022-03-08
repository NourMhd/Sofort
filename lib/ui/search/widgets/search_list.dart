import 'package:flutter/material.dart';
import 'package:sofort/app_routes.dart';

import 'package:sofort/modeles_api/model_api_info/api_info.dart';
import 'package:sofort/modeles_api/model_api_info/model_info.dart';

class ListCard extends StatelessWidget {
  String company_name;
  String register_number;
  String company_number;
  String status;
  VoidCallback  onTap;
   ListCard({
    Key? key,
    required this.company_name,
    required this.register_number,
    required this.company_number,
    required this.status,
    required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: const Icon(
          Icons.article,
          color: Colors.black,
        ),
        title: Text(company_name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(register_number),
            Text(company_number),
            Text(status),
          ],
        ),
        onTap: onTap,
        isThreeLine: true,
      ),
    );
  }
}

