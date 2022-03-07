import 'package:flutter/material.dart';
import 'package:sofort/app_routes.dart';



class MenuWidget extends StatefulWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: const Text('Speisekarte'),
      ),
      body:SingleChildScrollView(child: Column(
        children: [
          Container(
            color: Colors.white,
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1),
                side: const BorderSide(color: Colors.black),
              ),
              trailing:
                  const Icon(Icons.arrow_forward_ios, color: Colors.black),
              title: const Text('Mein Profil'),
              onTap: () => Navigator.pushNamed(context, myProfile),
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                  side: const BorderSide(color: Colors.black),
                ),
                trailing:
                    const Icon(Icons.arrow_forward_ios, color: Colors.black),
                title: const Text('Mein Konto'),
                onTap: () => Navigator.pushNamed(context, login),),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                  side: const BorderSide(color: Colors.black),
                ),
                trailing:
                    const Icon(Icons.arrow_forward_ios, color: Colors.black),
                title: const Text('Mehr Informationen'),
                onTap: () {}),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                  side: const BorderSide(color: Colors.black),
                ),
                trailing:
                    const Icon(Icons.arrow_forward_ios, color: Colors.black),
                title: const Text('Hilfe'),
                onTap: () {}),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                  side: const BorderSide(color: Colors.black),
                ),
                trailing:
                    const Icon(Icons.arrow_forward_ios, color: Colors.black),
                title: const Text('Ein Problem melden'),
                onTap: () {}),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                  side: const BorderSide(color: Colors.black),
                ),
                trailing:
                    const Icon(Icons.arrow_forward_ios, color: Colors.black),
                title: const Text('Kontaktiere uns'),
                onTap: () {}),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                  side: const BorderSide(color: Colors.black),
                ),
                trailing:
                    const Icon(Icons.arrow_forward_ios, color: Colors.black),
                title: const Text('Radar'),
                onTap: () {}),
          ),
        ],
      ),),
    );
  }
}
