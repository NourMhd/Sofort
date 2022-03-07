import 'package:flutter/material.dart';
import 'package:sofort/colors/const.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sofort/modeles_api/model_api_info/model_info.dart';



class CompanyInfo extends StatefulWidget {
   ModelCompanyInfo company;

    CompanyInfo({Key? key,required this.company}) : super(key: key);

  @override
  State<CompanyInfo> createState() => _CompanyInfoState();
}

class _CompanyInfoState extends State<CompanyInfo> {
  bool value = false;
  bool value1 = false;
  @override
  void initState() {
    print("hani wslet");
    print(widget.company.company!.companyName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final company =widget.company;
    var companyName =company.company!.companyName;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    top: 100,
                    left: 11,
                  ),
                  child: Text(
                    "test",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 11,
                  ),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Status: ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        TextSpan(
                          text: " infoStatus",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
                bottom: 30,
                top: 1,
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
                          ' STAMMDATEN DES UNTERNEHMEN',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue.withOpacity(0.6)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Icon(Icons.location_on,
                                          size: 17.0, color: redicon),
                                    ),
                                    TextSpan(
                                      text: "Adressen: ",
                                      style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " infoAddress",
                                      style: TextStyle(color: Colors.blueGrey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.check_box,
                                          color: redicon,
                                          size: 17.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "HR-Nummer: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " infoHR-Nummer",
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.date_range,
                                          color: redicon,
                                          size: 17.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Letzte Änderung: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " infoLetzte Änderung",
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.euro,
                                          color: redicon,
                                          size: 17.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Kapital: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " infokapital",
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.link,
                                          color: redicon,
                                          size: 17.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Website: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " infoWebsite",
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.phone,
                                          color: redicon,
                                          size: 17.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Telefon: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " infoTelefon",
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.mail,
                                          color: redicon,
                                          size: 17.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Email: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " infoEmail",
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: <Widget>[
                              const Icon(
                                Icons.account_balance,
                                color: redicon,
                                size: 17.0,
                              ),
                              const Text(
                                'INSOLVENZCHECK',
                                style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                              ),
                              const SizedBox(width: 10),
                              Checkbox(
                                value: value,
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              const Icon(
                                Icons.account_balance,
                                color: redicon,
                                size: 17.0,
                              ),
                              const Text(
                                'BILANZCHECK',
                                style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                              ),
                              const SizedBox(width: 35),
                              Checkbox(
                                value: value1,
                                onChanged: (value1) {
                                  setState(() {
                                    this.value1 = value1!;
                                  });
                                },
                              ),
                            ],
                          ),
                          ElevatedButton.icon(
                            icon: const Icon(
                              Icons.check,
                              
                              size: 17.0,
                            ),
                            label: const Text(
                              "CHECK",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white70),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black87),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
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
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
                bottom: 30,
              ),
              child: Card(
                shadowColor: Colors.blue,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      color: Colors.blue[50],
                      child: ListTile(
                        title: Text(
                          ' SIE SUCHEN DEN HANDELSREGISTERAUSZUG ODER DEN JAHRESABSCHLUSS DES UNTERNEHMEN' +
                              "",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue.withOpacity(0.6)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.description, color: redicon,size: 17.0,),
                              TextButton(
                                  child: const Text(
                                    'Document1',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 11),
                                  ),
                                  onPressed: () {}),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.description, color: redicon,size: 17.0,),
                              TextButton(
                                  child: const Text(
                                    'Document2',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 11),
                                  ),
                                  onPressed: () {}),
                            ],
                          ),
                          
                          Row(
                            children: [
                              const Icon(Icons.description, color: redicon,size: 17.0,),
                              TextButton(
                                  child: const Text(
                                    'Document2',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 11),
                                  ),
                                  onPressed: () {}),
                            ],
                          )
                          ,
                          Row(
                            children: [
                              const Icon(Icons.description, color: redicon,size: 17.0,),
                              TextButton(
                                  child: const Text(
                                    'Document2',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 11),
                                  ),
                                  onPressed: () {}),
                            ],
                          )
                          ,
                          Row(
                            children: [
                              const Icon(Icons.description, color: redicon,size: 17.0,),
                              TextButton(
                                  child: const Text(
                                    'Document2',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 11),
                                  ),
                                  onPressed: () {}),
                            ],
                          )
                          ,
                          Row(
                            children: [
                              const Icon(Icons.description, color: redicon,size: 17.0,),
                              TextButton(
                                  child: const Text(
                                    'Document2',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 11),
                                  ),
                                  onPressed: () {}),
                            ],
                          )
                          ,
                          Row(
                            children: [
                              const Icon(Icons.description, color: redicon,size: 17.0,),
                              TextButton(
                                  child: const Text(
                                    'Document2',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 11),
                                  ),
                                  onPressed: () {}),
                            ],
                          )
                          ,
                          Row(
                            children: [
                              const Icon(Icons.description, color: redicon,size: 17.0,),
                              TextButton(
                                  child: const Text(
                                    'Document2',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 11),
                                  ),
                                  onPressed: () {}),
                            ],
                          ),
                          const Text(
                            'Bei uns erhalten Sie alle verfügbaren Dokumente sofort zum Download ohne Wartezeit!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15,
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white70),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black87),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                  side: BorderSide(color: Colors.black87),
                                ),
                              ),
                            ),
                            child: const Text(
                              'JETZT DOKUMENTE ANZEIGEN',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            // Within the `FirstRoute` widget
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                elevation: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
                bottom: 30,
              ),
              child: Card(
                shadowColor: Colors.blue,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      color: Colors.blue[50],
                      child: ListTile(
                        title: Text(
                          ' HANDELSREGISTERAUSZUG' + "",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue.withOpacity(0.6)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Text(
                            'InfoRegistreDeCommerce',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                elevation: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
                bottom: 30,
              ),
              child: Card(
                shadowColor: Colors.blue,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      color: Colors.blue[50],
                      child: ListTile(
                        title: Text(
                          ' HIER DIE NEUSTEN HANDELSREGISTER-BEKANNTMACHUNGEN ZUM UNTERNEHMEN ' +
                              "",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue.withOpacity(0.6)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Date: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " info",
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Date: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " info",
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                elevation: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
                bottom: 30,
              ),
              child: Card(
                shadowColor: Colors.blue,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      color: Colors.blue[50],
                      child: ListTile(
                        title: Text(
                          ' BEWERTUNGEN FÜR:' + "",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue.withOpacity(0.6)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Name*:",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 12.0,
                                      top: 12.0,
                                      right: 8.0,
                                      left: 57),
                                  child: TextField(
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            borderSide:
                                                BorderSide(color: Colors.blue)),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 1.0),
                                        ),
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          fontSize: 13.0,
                                        ),
                                        labelText: 'Name...',
                                        labelStyle: TextStyle(
                                            fontWeight: FontWeight.w100,
                                            fontSize: 13.0,
                                            color: Colors.black),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "Bewertung*:",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Expanded(
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 12.0,
                                        top: 12.0,
                                        right: 4.0,
                                        left: 23),
                                    child: RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 0.0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                "Ihr Kommentar*:",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 12.0,
                                      top: 12.0,
                                      right: 8.0,
                                      left: 1),
                                  child: TextField(
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            borderSide:
                                                BorderSide(color: Colors.blue)),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 1.0),
                                        ),
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          fontSize: 13.0,
                                        ),
                                        labelText: 'Ihr Kommentar...',
                                        labelStyle: TextStyle(
                                            fontWeight: FontWeight.w100,
                                            fontSize: 13.0,
                                            color: Colors.black),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white70),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black87),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                    side: BorderSide(color: Colors.black87),
                                  ),
                                ),
                              ),
                              child: const Text(
                                'Bewertung veröffentlichen',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              // Within the `FirstRoute` widget
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                elevation: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
