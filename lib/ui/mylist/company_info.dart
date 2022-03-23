import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sofort/accordion.dart';
import 'package:sofort/app_routes.dart';
import 'package:sofort/colors/const.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sofort/core/arguments.dart';
import 'package:sofort/modeles_api/model_api_info/model_info.dart';

import 'package:url_launcher/url_launcher.dart';

class CompanyInfo extends StatefulWidget {
  CompanyInfoParams params;

  CompanyInfo({Key? key, required this.params}) : super(key: key);

  @override
  State<CompanyInfo> createState() => _CompanyInfoState();
}

class _CompanyInfoState extends State<CompanyInfo> {
  bool value = false;

  bool value1 = false;
  String company_name = "";
  String? webSite;
  String? telefon;
  String? mail;
  String? status;
  String? registerar;
  String? registeredAddress;
  String? registerType;
  String? registerNumber;
  String? capital;
  List<Notices>? notices;

  @override
  void initState() {
    company_name = widget.params.modelCampanyInfo.company!.companyName!;
    status = widget.params.modelCampanyInfo.company!.status!;
    registerar = widget.params.modelCampanyInfo.company!.registerar!;
    registeredAddress =
        widget.params.modelCampanyInfo.company!.registeredAddress!;
    registerType = widget.params.modelCampanyInfo.company!.registerType!;
    registerNumber = widget.params.modelCampanyInfo.company!.registerNumber!;
    capital = widget.params.modelCampanyInfo.company!.capital!;
    notices = widget.params.modelCampanyInfo.company!.notices!;
    webSite = widget.params.modelcompany.website!;
    telefon = widget.params.modelcompany.phoneNumber!;
    mail = widget.params.modelcompany.email!;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
                bottom: 30,
                top: 40,
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
                          company_name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
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
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      const WidgetSpan(
                                        child: Icon(
                                          Icons.assistant_photo_rounded,
                                          color: Colors.deepOrange,
                                          size: 17.0,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: "Status: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: status,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.location_on,
                                    size: 17.0, color: Colors.deepOrange),
                                const Text(
                                  "Adressen: ",
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    registeredAddress!,
                                    style:
                                        const TextStyle(color: Colors.blueGrey),
                                  ),
                                ),
                              ]),
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
                                          color: Colors.deepOrange,
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
                                      const WidgetSpan(
                                        child: Icon(
                                          Icons.date_range,
                                          color: Colors.deepOrange,
                                          size: 17.0,
                                        ),
                                      ),
                                      const TextSpan(
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
                                          color: Colors.deepOrange,
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
                                child: RichText(maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.fade,
                                  text: TextSpan(
                                    children: [
                                      const WidgetSpan(
                                        child: Icon(
                                          Icons.link,
                                          color: Colors.deepOrange,
                                          size: 17.0,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: "Website: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(children: [
                                        TextSpan(
                                          text: webSite! + ' ',
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () => launch(webSite!),
                                          style: const TextStyle(
                                            

                                              fontSize: 13,
                                              color: Colors.deepOrange),
                                        ),
                                        
                                      ])
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
                                          Icons.phone,
                                          color: Colors.deepOrange,
                                          size: 17.0,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: "Telefon: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(children: [
                                        TextSpan(
                                          text: telefon! + ' ',
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () =>
                                                launch(('tel://${telefon}')),
                                          style: const TextStyle(
                                            color: Colors.deepOrange,
                                          ),
                                        ),
                                        
                                      ]),
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
                                          Icons.mail,
                                          color: Colors.deepOrange,
                                          size: 17.0,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: "Email: ",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(children: [
                                        TextSpan(
                                          text: mail! + ' ',
                                          recognizer: TapGestureRecognizer()
                                            ..onTap =
                                                () => launch('mailto:$mail'),
                                          style: const TextStyle(
                                            color: Colors.deepOrange,
                                          ),
                                        ),
                                        
                                      ]),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: const [
                                  Icon(
                                    Icons.account_balance,
                                    color: Colors.deepOrange,
                                    size: 17.0,
                                  ),
                                  Text(
                                    'INSOLVENZCHECK',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 10),
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.deepOrange,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: const [
                                  Icon(
                                    Icons.account_balance,
                                    color: Colors.deepOrange,
                                    size: 17.0,
                                  ),
                                  Text(
                                    'BILANZCHECK',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 35),
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.deepOrange,
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
                shadowColor: Colors.grey,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Container(
                      color: const Color(0xff333333),
                      child: ListTile(
                        title: Text(
                          'SIE SUCHEN DEN HANDELSREGISTERAUSZUG ODER DEN JAHRESABSCHLUSS DES UNTERNEHMEN ' +
                             
                              company_name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white),
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
                                color: Colors.deepOrange,
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
                                      context, documentsview,arguments: widget.params)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: Colors.deepOrange,
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
                                      context, documentsview,arguments: widget.params)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: Colors.deepOrange,
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
                                      context, documentsview,arguments: widget.params)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: Colors.deepOrange,
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
                                      context, documentsview,arguments: widget.params)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: Colors.deepOrange,
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
                                      context, documentsview,arguments: widget.params)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: Colors.deepOrange,
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
                                      context, documentsview,arguments: widget.params)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: Colors.deepOrange,
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
                                      context, documentsview,arguments: widget.params)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: Colors.deepOrange,
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
                                      context, documentsview,arguments: widget.params)),
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
                                Navigator.pushNamed(context, documentsview,arguments: widget.params),
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
                shadowColor: Colors.grey,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Container(
                      color: const Color(0xff333333),
                      child: ListTile(
                        title: Text(
                          ' HANDELSREGISTERAUSZUG ' + company_name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "Die Firma ",
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: company_name,
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text:
                                        ' im Handelsregister beim Amtsgericht ',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: registerar!,
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: ' unter der Handelsregister-Nummer ',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: registerNumber!,
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text:
                                        ' geführt.\n\n\nDas Unternehmen, welches Sie suchen, kann über die Firmenadresse: ',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: registeredAddress!,
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text:
                                        ' schriftlich kontaktiert werden.\n\n\nAktuell gibt es ',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: (notices!.length).toString(),
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: ' Registerbekanntmachungen zu ',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: company_name,
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: ' Die letzte Änderung ist vom ',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: notices![(notices!.length) - 1]
                                        .publicationDate!,
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\n\nAlle Dokumente des Unternehmen ',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: company_name,
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: ' (',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: registerNumber!,
                                    style: const TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: ') ',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text:
                                        'wie, Aktueller oder Chronologischer Handelsregisterauszug, Bilanzen, Jahresabschluss oder andere Unterlagen werden direkt aus dem Jeweiligen amtlichen Handelsregister ermittelt. Sie erhalten den Handelsregisterzug und alle weiteren Dokumente zum sofort Download per E-Mail. ',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
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
                shadowColor: Colors.grey,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Container(
                      color: const Color(0xff333333),
                      child: ListTile(
                        title: Text(
                          ' HIER DIE NEUSTEN HANDELSREGISTER-BEKANNTMACHUNGEN ZUM UNTERNEHMEN ' +
                              ' ' +
                              company_name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                          physics: const PageScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: notices!.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Row(children: [
                              Expanded(
                                child: Accordion(
                                  date: notices![index].publicationDate!,
                                  title: notices![index].noticeType! + " ",
                                  content: notices![index].noticeText!,
                                ),
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
                bottom: 10,
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
                          ' BEWERTUNGEN FÜR ' + company_name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white),
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
                                  color: Colors.deepOrange,
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
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 10),
              child: Row(
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
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                ],
              ),
            ),
          ],
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
