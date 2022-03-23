import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;
  final String date;

  const Accordion(
      {Key? key,
      required this.date,
      required this.title,
      required this.content})
      : super(key: key);
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          leading: Text(
            widget.title,
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          title: Text(
            widget.date,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: IconButton(
            icon: Icon(
                _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                size: 40),
            onPressed: () {
              setState(() {
                _showContent = !_showContent;
              });
            },
          ),
        ),
        _showContent
            ? Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  widget.content,
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                ),
              )
            : Container()
      ]),
    );
  }
}
