import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sofort/colors/const.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sofort/modeles_api/model_api_info/model_info.dart';
class Documents extends StatefulWidget {
  ModelCompanyInfo company;
   Documents({Key? key, required this.company}) : super(key: key);

  @override
  State<Documents> createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  String? documents;
  @override
  void initState() {
   // documents = widget.company.company!.documents!;
    
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const Icon(Icons.article,color:Colors.black,),

        title:  Text("dfs"),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            
          ],
        ),
        
        isThreeLine: true,
      );
  }
}