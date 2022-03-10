import 'package:flutter/material.dart';
import 'package:sofort/modeles_api/model_api_info/model_info.dart';

class DocumentsView extends StatefulWidget {
  //ModelCompanyInfo company;
  const DocumentsView({Key? key}) : super(key: key);

  @override
  State<DocumentsView> createState() => _DocumentsViewState();
}

class _DocumentsViewState extends State<DocumentsView> {
  bool value = false;
  // Documents? documents;

  //@override
  //void initState() {
  //documents = widget.company.company!.documents!;

  //super.initState();

  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 5,
          right: 5,
          bottom: 20,
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
                    ' UNSER DOKUMENTENSERVICE+" "',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue.withOpacity(0.6)),
                  ),
                ),
              ),
              ListView.builder(
                  physics: const PageScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 7,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 5,
                              ),
                              child: Text(
                                "Name of doc " + "(type of doc )",
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Card(
                            color: Color.fromARGB(255, 231, 231, 231),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4.0, horizontal: 3),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Name of doc",
                                    )),
                                    Text(
                                      "Price €",
                                    ),
                                    Checkbox(
                                      checkColor: Colors.white,
                                      activeColor:
                                          Color.fromARGB(255, 189, 1, 1),
                                      value: value,
                                      onChanged: (value) {
                                        setState(() {
                                          this.value = value!;
                                        });
                                      },
                                    ),
                                  ]),
                            )),
                        const SizedBox(
                          height: 25,
                        ),
                      ],
                    );
                  }),
                  
            ],
          ),
          elevation: 10,
        ),
      ),
    ));
  }
}
