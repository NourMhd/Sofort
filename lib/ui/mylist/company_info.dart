import 'package:flutter/material.dart';
import 'package:sofort/accordion.dart';
import 'package:sofort/app_routes.dart';
import 'package:sofort/colors/const.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sofort/modeles_api/model_api_info/model_info.dart';

class CompanyInfo extends StatefulWidget {
  ModelCompanyInfo company;

  CompanyInfo({Key? key, required this.company}) : super(key: key);

  @override
  State<CompanyInfo> createState() => _CompanyInfoState();
}

class _CompanyInfoState extends State<CompanyInfo> {
  bool value = false;

  bool value1 = false;
  String company_name = "";
  String? status;
  String? registerar;
  String? registeredAddress;
  String? registerType;
  String? registerNumber;
  String? capital;
  List<Notices>? notices;

  @override
  void initState() {
    company_name = widget.company.company!.companyName!;
    status = widget.company.company!.status!;
    registerar = widget.company.company!.registerar!;
    registeredAddress = widget.company.company!.registeredAddress!;
    registerType = widget.company.company!.registerType!;
    registerNumber = widget.company.company!.registerNumber!;
    capital = widget.company.company!.capital!;
    notices = widget.company.company!.notices!;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final company = widget.company;
    

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 100,
                      left: 11,
                    ),
                    child: Text(
                      company_name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
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
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Status:",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        TextSpan(
                          text: status,
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
                                text: TextSpan(
                                  children: [
                                    const WidgetSpan(
                                      child: Icon(Icons.location_on,
                                          size: 17.0, color: redicon),
                                    ),
                                    const TextSpan(
                                      text: "Adressen: ",
                                      style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: registeredAddress,
                                      style: const TextStyle(
                                          color: Colors.blueGrey),
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
                                  text: TextSpan(
                                    children: [
                                      const WidgetSpan(
                                        child: Icon(
                                          Icons.check_box,
                                          color: redicon,
                                          size: 17.0,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: "HR-Nummer: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: registerNumber,
                                        style: const TextStyle(
                                            color: Colors.blueGrey),
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
                                  text: TextSpan(
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
                                        text: notices![(notices!.length) - 1]
                                            .publicationDate!,
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
                                  text: TextSpan(
                                    children: [
                                      const WidgetSpan(
                                        child: Icon(
                                          Icons.euro,
                                          color: redicon,
                                          size: 17.0,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: "Kapital: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: capital,
                                        style: const TextStyle(
                                            color: Colors.blueGrey),
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
                                        text: " keine Daten verfügbar",
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
                                        text: " keine Daten verfügbar",
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
                                        text: " keine Daten verfügbar",
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
                      height: 90,
                      color: Colors.blue[50],
                      child: ListTile(
                        title: Text(
                          ' SIE SUCHEN DEN HANDELSREGISTERAUSZUG ODER DEN JAHRESABSCHLUSS DES UNTERNEHMEN' +
                              ' ' +
                              company_name,
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
                              const Icon(
                                Icons.description,
                                color: redicon,
                                size: 17.0,
                              ),
                              TextButton(
                                  child: const Text(
                                    'Aktueller Abdruck',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () => Navigator.pushNamed(
                                      context, documentsview)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: redicon,
                                size: 17.0,
                              ),
                              TextButton(
                                  child: const Text(
                                    'Chronologischer Abdruck',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () => Navigator.pushNamed(
                                      context, documentsview)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: redicon,
                                size: 17.0,
                              ),
                              TextButton(
                                  child: const Text(
                                    'Historischer Handelsregisterauszug',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () => Navigator.pushNamed(
                                      context, documentsview)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: redicon,
                                size: 17.0,
                              ),
                              TextButton(
                                  child: const Text(
                                    'Strukturierter Registerinhalt',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () => Navigator.pushNamed(
                                      context, documentsview)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: redicon,
                                size: 17.0,
                              ),
                              TextButton(
                                  child: const Text(
                                    'Liste der Gesellschafter',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () => Navigator.pushNamed(
                                      context, documentsview)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: redicon,
                                size: 17.0,
                              ),
                              TextButton(
                                  child: const Text(
                                    'Gesellschaftsvertrag',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () => Navigator.pushNamed(
                                      context, documentsview)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: redicon,
                                size: 17.0,
                              ),
                              TextButton(
                                  child: const Text(
                                    'Anmeldungen / Protokolle',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () => Navigator.pushNamed(
                                      context, documentsview)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: redicon,
                                size: 17.0,
                              ),
                              TextButton(
                                  child: const Text(
                                    'Bilanz / Jahresabschluss',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () => Navigator.pushNamed(
                                      context, documentsview)),
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
                            onPressed: () =>
                                Navigator.pushNamed(context, documentsview),
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
                          ' HANDELSREGISTERAUSZUG '  + company_name,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue.withOpacity(0.6)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children:  [
                          Expanded(
                              child: Text(
                            'Die Firma ' +
                                company_name  +
                                '  im Handelsregister beim Amtsgericht ' +
                                registerar! +
                                ' unter der Handelsregister-Nummer ' +
                                registerNumber! +
                                ' geführt.\n\n\nDas Unternehmen, welches Sie suchen, kann über die Firmenadresse: ' +
                                registeredAddress! +
                                ' schriftlich kontaktiert werden.\n\n\nAktuell gibt es ' +
                                (notices!.length).toString() +
                                ' Registerbekanntmachungen zu ' +
                                company_name +
                                ' Die letzte Änderung ist vom ' +
                                notices![(notices!.length) - 1]
                                            .publicationDate! +'.\n\n\n' +
                                'Alle Dokumente des Unternehmen '+company_name+' '+'('+registerNumber!+')'+' wie, Aktueller oder Chronologischer Handelsregisterauszug, Bilanzen, Jahresabschluss oder andere Unterlagen werden direkt aus dem Jeweiligen amtlichen Handelsregister ermittelt. Sie erhalten den Handelsregisterzug und alle weiteren Dokumente zum sofort Download per E-Mail.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15,
                            ),
                          )),
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
                              ' ' +
                              company_name,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue.withOpacity(0.6)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ListView.builder(
                          physics: const PageScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: notices!.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Row(children: [
                              Text(notices![index].publicationDate! + ":",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  )),
                              Expanded(
                                child: Accordion(
                                  title: notices![index].noticeType!,
                                  content: notices![index].noticeText!,
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                            ]);
                          }),
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
                          ' BEWERTUNGEN FÜR' + ' ' + company_name,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue.withOpacity(0.6)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                bottom: 12.0, top: 12.0, right: 1.0, left: 1),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
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
                          const Padding(
                            padding: EdgeInsets.only(
                                bottom: 12.0, top: 12.0, right: 1.0, left: 1),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
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
                          Padding(
                              padding: const EdgeInsets.all(3),
                              child: RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )),
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
