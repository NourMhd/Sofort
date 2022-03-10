import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;

  const Accordion({Key? key, required this.title, required this.content})
      : super(key: key);
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
                              padding:  EdgeInsets.symmetric(
                                  horizontal: 10.0,vertical: 0, ),
                                    child: Card( 
     
      child: Column(children: [
        ListTile(
          title: Text(widget.title,style: TextStyle(
                                          color: Color.fromARGB(255, 212, 7, 7),
                                          fontSize:15,
                                          
                                        ),),
          trailing: IconButton(
            icon: Icon(
                _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down,size:40),
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
                child: Text(widget.content,style: TextStyle(
                                          color: Colors.blueGrey,
                                          
                                          
                                        ),),
              )
            : Container()
      ]),
    ));
  }
}