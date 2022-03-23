import 'package:flutter/material.dart';

class SearchMYlistWidget extends StatefulWidget {
  const SearchMYlistWidget({Key? key}) : super(key: key);

  @override
  State<SearchMYlistWidget> createState() => _SearchMYlistWidgetState();
}

class _SearchMYlistWidgetState extends State<SearchMYlistWidget> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return TextField(autofocus : true,
      style: const TextStyle(fontSize: 15, color: Colors.deepOrange),
      decoration: InputDecoration(
        hintText: "Suche in meinen Dokumenten...",
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
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.deepOrange,
        ),
        suffixIcon: IconButton(
            onPressed: () {
              showBottomSheet(
                context: context,
                builder: (context) => SizedBox(
                  height: 200,
                  width: mediaQuery.size.width,
                  child: Row(mainAxisAlignment : MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right:16.0),
                            child: Text(
                              'Hauptquartier',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right:66.0),
                            child: Text(
                              'Geäst',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Text(
                            'Rechtspersonen',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
            icon: const Icon(Icons.filter_alt_outlined, color: Colors.deepOrange,)),
      ),
    );
  }
}
