



import 'package:flutter/material.dart';
import 'package:sofort/app_routes.dart';
import 'package:sofort/colors/const.dart';
import 'package:sofort/core/arguments.dart';

import '../../../modeles_api/model_api_info/model_info.dart';




class DocumentsView extends StatefulWidget {
  CompanyInfoParams paramss;
  
  
  DocumentsView({Key? key, required this.paramss}) : super(key: key);

  @override
  State<DocumentsView> createState() => _DocumentsViewState();
}

class _DocumentsViewState extends State<DocumentsView> {
  bool isChecked = false;
  bool value1 = false;
  bool val2 = false;
  var selectedIndexes = [];
  var selectedIndexes1 = [];
  bool value = false;
  String? company_name = " ";
  List<DK>? dK;

  List<Bilans>? bilans;
  
  
  @override
  void initState() {
    company_name = widget.paramss.modelCampanyInfo.company!.companyName!;
    dK = widget.paramss.modelCampanyInfo.company!.documents!.dK!;
    bilans = widget.paramss.modelCampanyInfo.company!.documents!.bilans!;

    

    

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 5,
            right: 5,
            bottom: 30,
          ),
          child: Card(
            shadowColor: Colors.grey,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Container(
                  color: const Color(0xff333333),
                  child: ListTile(
                    title: Text(
                      'UNSER DOKUMENTENSERVICE ' + company_name!,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                            height: 10,
                          ),
                Card(
                                    shadowColor: Colors.grey,
                                    elevation: 5.0,
                                    color: Color.fromARGB(255, 231, 231, 231),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 3),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                         const   Expanded(
                                                child: Text(
                                              "Aktueller Handelsregisterauszug",
                                            )),
                                         const   Text(
                                              "19,90€",
                                              style: TextStyle(fontWeight:FontWeight.bold),
                                            ),
                                            Checkbox(
                                              checkColor: Colors.white,
                                              activeColor: const Color.fromARGB(
                                                  255, 189, 1, 1),
                                              value: isChecked,
                                              onChanged: (isChecked) {
                                                setState(() {
                            this.isChecked = isChecked!;
                           
                          });
                                              },
                                            ),
                                          ]),
                                    )),
                            
                          Card(
                                    shadowColor: Colors.grey,
                                    elevation: 5.0,
                                    color: Color.fromARGB(255, 231, 231, 231),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 3),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                                child: Text(
                                              "Chronologischer Handelsregisterauszug",
                                            )),
                                            Text(
                                              "19,90€",
                                              style: TextStyle(fontWeight:FontWeight.bold),
                                            ),
                                            Checkbox(
                                              checkColor: Colors.white,
                                              activeColor: Color.fromARGB(
                                                  255, 189, 1, 1),
                                              value: value1,
                                              onChanged: (value1) {setState(() {
                                                this.value1=value1!;
                                              });},
                                            ),
                                          ]),
                                    )),
                              
                          Card(
                                    shadowColor: Colors.grey,
                                    elevation: 5.0,
                                    color: Color.fromARGB(255, 231, 231, 231),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 3),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                                child: Text(
                                              "Strukturierter Registerinhalt",
                                            )),
                                            Text(
                                              "19,90€",
                                              style: TextStyle(fontWeight:FontWeight.bold),
                                            ),
                                            Checkbox(
                                              checkColor: Colors.white,
                                              activeColor: Color.fromARGB(
                                                  255, 189, 1, 1),
                                              value: val2,
                                              onChanged: (val2) {setState(() {
                                               this.val2=val2!;
                                              });},
                                            ),
                                          ]),
                                    )),






                ListView.builder(
                    physics: const PageScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount:1 ,
                
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children:  [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 5,
                                ),
                                child: Text(
                                  "Dokumentenansicht",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          ),
                          
                          
                          ListView.builder(
                              physics: const PageScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: dK!.length,
                              shrinkWrap: true,
                             
                              
                              
                              itemBuilder: (context, index) {
                                return Card(
                                    shadowColor: Colors.grey,
                                    elevation: 5.0,
                                    color: Color.fromARGB(255, 231, 231, 231),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 2),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                                child: Text(
                                              dK![index].title!,
                                            )),
                                            Text(
                                              "Price €",
                                            ),
                                            Checkbox(
                                              checkColor: Colors.white,
                                              activeColor: Color.fromARGB(
                                                  255, 189, 1, 1),
                                              value: selectedIndexes1
                                                  .contains(index),
                                              onChanged: (_) {
                                                setState(() {
                                                  if (selectedIndexes1
                                                      .contains(index)) {
                                                    selectedIndexes1.remove(
                                                        index); // unselect
                                                  } else {
                                                    selectedIndexes1
                                                        .add(index); // select
                                                  }
                                                });
                                              },
                                            ),
                                          ]),
                                          
                                    ));
                                            }),
                          
                        ],
                      );
                    }),
                    ListView.builder(
                    physics: const PageScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children:  [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 5,
              
                  ),
                                child: Text(
                                 "Bilanz / Jahresabschluss",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          
                          ListView.builder(
                              physics: const PageScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: bilans!.length,
                              shrinkWrap: true,
                             
                              
                              
                              itemBuilder: (context, index) {
                                return Card(
                                    shadowColor: Colors.grey,
                                    elevation: 5.0,
                                    color: Color.fromARGB(255, 231, 231, 231),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 3),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                                child: Text(
                                              bilans![index].title!,
                                            )),
                                            Text(
                                              "Price €",
                                            ),
                                            Checkbox(
                                              checkColor: Colors.white,
                                              activeColor: Color.fromARGB(
                                                  255, 189, 1, 1),
                                              value: selectedIndexes
                                                  .contains(index),
                                              onChanged: (_) {
                                                setState(() {
                                                  if (selectedIndexes
                                                      .contains(index)) {
                                                    selectedIndexes.remove(
                                                        index); // unselect
                                                  } else {
                                                    selectedIndexes
                                                        .add(index); // select
                                                  }
                                                });
                                              },
                                            ),
                                          ]),
                                    ));
                              }),
                          
                        ],
                      );
                    }),





                    
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                        icon: const Icon(
                          Icons.arrow_back_outlined,
                          size: 17.0,
                        ),
                        label: const Text(
                          "Rückkehr",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white70),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black87),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                              side: BorderSide(color: Colors.black87),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(
                          Icons.add_shopping_cart_rounded,
                          size: 17.0,
                        ),
                        label: const Text(
                          "CHECKOUT",
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        ),
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white70),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black87),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                              side: BorderSide(color: Colors.black87),
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            elevation: 10,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundcolor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Suchen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy),
            label: 'Jetzt Loslegen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Speisekarte',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, searchpage);
              break;
            case 1:
              Navigator.pushNamed(context, myListPage);
              break;
            case 2:
              Navigator.pushNamed(context, menuPage);
          }
        },
      ),
    );
  }
}
