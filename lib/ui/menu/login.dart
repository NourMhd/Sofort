import 'package:flutter/material.dart';
import 'package:sofort/app_routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: const Text('Mein Konto'),
      ),
      body:SingleChildScrollView(child: Stack(
        children: <Widget>[
          Container(
            height: mediaQuery.size.height,
            width: mediaQuery.size.width,
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
            right: 30,
            left: 30,
            bottom: 280,
            height: 150,
            child: TextFormField(
              enableSuggestions: false,
              autocorrect: false,
              style: const TextStyle(fontSize: 15, color: Colors.white),
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 40,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.blue)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70, width: 2.0),
                ),
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 15.0,
                    color: Colors.white),
                labelText: 'Login',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 15.0,
                    color: Colors.white),
              ),
            ),
          ),
          Positioned(
            right: 30,
            left: 30,
            bottom: 180,
            height: 165,
            child: Column(
              children: [
                TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                      size: 40,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.white70, width: 2.0),
                    ),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                    labelText: 'Passwort',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlueAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        side: BorderSide(color: Colors.lightBlueAccent),
                      ),
                    ),
                  ),
                  child: const Text('Einloggen '),
                  onPressed: () => Navigator.pushNamed(context, homePage),
                ),
              ],
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 70,
              height: 110,
              child: Column(
                children: [
                  TextButton(
                      child: const Text(
                        'Hast du dein Passwort vergessen?',
                        style:
                            TextStyle(color: Colors.deepOrange, fontSize: 11),
                      ),
                      onPressed: () {}),
                  const SizedBox(
                    height: 10,
                    width: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.lightBlueAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          side: BorderSide(color: Colors.lightBlueAccent),
                        ),
                      ),
                    ),
                    child: const Text('Ein Konto Erstellen '),
                    
                    onPressed: () =>
                        Navigator.pushNamed(context, creationAccount),
                  ),
                ],
              )),
        ],
      ),),
    );
  }
}
