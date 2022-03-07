import 'package:flutter/material.dart';
import 'package:sofort/app_routes.dart';



class ListtileWidget extends StatefulWidget {
  String adress;
  String dateOfPurchase;
  String nameOfCompany;
   ListtileWidget({Key? key,required this.adress,required this.dateOfPurchase, required this.nameOfCompany}) : super(key: key);

  @override
  State<ListtileWidget> createState() => _ListtileWidgetState();
}

class _ListtileWidgetState extends State<ListtileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
      child: ListTile(
        leading: const Icon(Icons.article,color:Colors.black,),

        title:  Text(widget.nameOfCompany),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(widget.adress),
            Text(widget.dateOfPurchase),
          ],
        ),
        onTap: () => Navigator.pushNamed(context, companyInfo),
        isThreeLine: true,
      ),
    );
  }
}
