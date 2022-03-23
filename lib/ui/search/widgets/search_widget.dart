import 'package:flutter/material.dart';
import 'package:sofort/colors/const.dart';
import 'package:sofort/core/arguments.dart';
import 'package:sofort/modeles_api/model_api_contact/api_contact.dart';
import 'package:sofort/modeles_api/model_api_contact/model_contact.dart';
import 'package:sofort/modeles_api/model_api_info/api_info.dart';
import 'package:sofort/modeles_api/model_api_info/model_info.dart';

import 'package:sofort/modeles_api/model_api_search/model.dart';
import 'package:sofort/modeles_api/model_api_search/api_services.dart';
import 'package:sofort/ui/search/widgets/search_list.dart';

import '../../../app_routes.dart';

class Searchwidget extends StatefulWidget {
  const Searchwidget({Key? key}) : super(key: key);

  @override
  State<Searchwidget> createState() => _SearchwidgetState();
}

class _SearchwidgetState extends State<Searchwidget> {
  Future<ListCompanies>? listCompanies;
  bool? loading=false;
  ListCompanies list = ListCompanies(companies: []);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          title: const Text('Suchen'),
        ),
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            TextField(
              
              autofocus : true,
              controller: controller,
              style: const TextStyle(fontSize: 15, color: Colors.deepOrange),
              decoration: InputDecoration(
                hintText: "Unternehmen suchen...",
                hintStyle: const TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 15.0,
                    color: Colors.deepOrange),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 32.0,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 32.0,
                  ),
                ),
                suffixIcon: IconButton(
                    onPressed: () {
                      showBottomSheet(
                        context: context,
                        builder: (context) => SizedBox(
                          height: 200,
                          width: mediaQuery.size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: const [
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 16.0),
                                    child: Text(
                                      'Hauptquartier',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 66.0),
                                    child: Text(
                                      'Geäst',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Text(
                                    'Rechtspersonen',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              Column(
                                children: [
                                  Switch.adaptive(
                                    value: true,
                                    activeColor: Colors.green,
                                    onChanged: (newValue) {},
                                  ),
                                  Switch.adaptive(
                                    value: true,
                                    activeColor: Colors.green,
                                    onChanged: (newValue) {},
                                  ),
                                  Switch.adaptive(
                                    value: true,
                                    activeColor: Colors.green,
                                    onChanged: (newValue) {},
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  ElevatedButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text("close"))
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.deepOrange,
                    )),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor:Colors.black,
                  elevation:15,
                  
  
      primary: blue,
       onPrimary: Color.fromARGB(255, 255, 255, 255) ,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                
                ),
                child: const Text(
                  'Suchen',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 10,
                  ),
                ),
                onPressed: () {

                  
                  loading=true;
                  postlist().then((resultat) {
                    setState(() => list = resultat);
                  });
                  print(list.companies![0].companyName);
                  
                },
              ),
            ),FutureBuilder<ListCompanies>(
        future: listCompanies,
        builder: (context, snapshot){
          if(loading=true){
            return
            SizedBox(
              width: mediaQuery.size.width,
              child: ListView.builder(
                physics: const PageScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: list.companies!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    child: ListCard(
                        register_number: list.companies![index].registerNumber!,
                        company_number: list.companies![index].companyNumber!,
                        status: list.companies![index].status!,
                        company_name: list.companies![index].companyName!,
                        onTap: () {
                          
                          getOneCompany(list.companies![index].companyNumber!)
                              .then(
                            (value) {
                              getcontact(list.companies![index].companyNumber!)
                                  .then((v) {
                                final arguments = CompanyInfoParams(
                                    modelCampanyInfo: value, modelcompany: v);
                                Navigator.pushNamed(context, companyInfo,
                                    arguments: arguments);
                              });
                            },
                          );
                          
                        }),
                  );
                }));}
              
            
            else{
            return Center(child:CircularProgressIndicator());
          }
        })]),
        ));
  }

  Future<ListCompanies> postlist() async {
    list = (await ApiService.postCompanies(company_name: controller.text))!;

    return list;
  }

  Future<ModelCompanyInfo> getOneCompany(String company_number) async {
    var ss = await ApiInfo.getOneCompany(companyNumber: company_number);

    return (ss!);
  }

  Future<Modelcompany> getcontact(String company_number) async {
    var ss = await ApiContact.getcontact(companyNumber: company_number);

    return (ss!);
  }

  bool isEmpty(ListCompanies listCompanies) {
    if (listCompanies.companies!.isNotEmpty) {
      return true;
    }

    return false;
  }
}
