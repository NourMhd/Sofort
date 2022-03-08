import 'package:flutter/material.dart';
import 'package:sofort/modeles_api/model_api_info/model_info.dart';

class DocumentsView extends StatefulWidget {
  //ModelCompanyInfo company;
  const DocumentsView({Key? key}) : super(key: key);

  @override
  State<DocumentsView> createState() => _DocumentsViewState();
}

class _DocumentsViewState extends State<DocumentsView> {
  // Documents? documents;

  //@override
  //void initState() {
  //documents = widget.company.company!.documents!;

  //super.initState();

  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 5,
          right: 5,
        ),
        child: Card(
          shadowColor: Colors.blue,
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.blue[50],
                child: ListTile(
                  title: Text(
                    ' docum',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue.withOpacity(0.6)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 0.0),
                          child: Text(
                            "name of doc " + "(type of doc )",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Card(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(children: const [
                            Text(
                              "xddfg",
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text("xdfg")
                          ]),
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          elevation: 10,
        ),
      ),
    );
  }
}
