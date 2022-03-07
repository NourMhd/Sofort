import 'package:flutter/material.dart';


import 'package:sofort/ui/mylist/myListWidgets/listtile_articl_widget.dart';
import 'package:sofort/ui/mylist/myListWidgets/searchMyListWidget.dart';

class MyListwidget extends StatefulWidget {
  const MyListwidget({Key? key}) : super(key: key);

  @override
  State<MyListwidget> createState() => _MyListwidgetState();
}

class _MyListwidgetState extends State<MyListwidget> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: const Text('Jetzt Loslegen'),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchMYlistWidget(),
            const SizedBox(
              height: 10,
              width: 10,
            ),
            SizedBox(
              width: mediaQuery.size.width,
              child: ListView.builder(
                physics: const PageScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 30,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.black,
                    child: ListtileWidget(
                        adress: "adress",
                        dateOfPurchase: 'date Of Purchase',
                        nameOfCompany: 'Name Of Company'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
