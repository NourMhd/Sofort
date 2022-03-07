import 'package:flutter/material.dart';
import 'package:sofort/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(height:mediaQuery.size.height ,
          width:mediaQuery.size.width ,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/artboard.png'), fit: BoxFit.cover),
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 470,
            height: 60,
            child: Image(
              image: AssetImage('assets/logo.png'),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 400,
              height: 60,
              child: Column(
                children: const [
                  Text(
                    'SOFORT',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    'HANDELSREGISTER',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 290,
              height: 60,
              child: Column(
                children: const [
                  Text(
                    'Wissen mit wem Sie Geschäfte machen',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              )),
          Positioned(
            right: 30,
            left: 30,
            bottom: 230,
            height: 60,
            child: Container(
              margin: const EdgeInsets.all(1),
              child: ElevatedButton.icon(
                icon: const Icon(
                  Icons.search,
                  size: 35.0,
                ),
                label: const Text("Unternehmen suchen..."),
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black38),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, searchpage),
              ),
            ),
          ),
          Positioned(
            left: 90,
            right: 90,
            bottom: 90,
            height: 60,
            child: Container(
              margin: const EdgeInsets.all(1),
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.deepOrange[600]!),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      side: BorderSide(color: Colors.deepOrange[600]!),
                    ),
                  ),
                ),
                child: const Text('Jetzt Loslegen'),
                // Within the `FirstRoute` widget
                onPressed: () => Navigator.pushNamed(context, myListPage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
