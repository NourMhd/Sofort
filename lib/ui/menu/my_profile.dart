import 'package:flutter/material.dart';
import 'package:sofort/app_routes.dart';

import 'package:sofort/colors/const.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: const Text('Mein Profil'),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  enableSuggestions: false,
                  autocorrect: false,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 17,
                    ),
                    suffixIcon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 17,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                    labelText: 'Name...',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  enableSuggestions: false,
                  autocorrect: false,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 17,
                    ),
                    suffixIcon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 17,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                    labelText: 'Nachname...',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  enableSuggestions: false,
                  autocorrect: false,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 17,
                    ),
                    suffixIcon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 17,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                    labelText: 'Telefon...',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  enableSuggestions: false,
                  autocorrect: false,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.white,
                      size: 17,
                    ),
                    suffixIcon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 17,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                    labelText: 'Post...',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                      size: 17,
                    ),
                    suffixIcon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 17,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                    labelText: 'Passwort...',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                      size: 17,
                    ),
                    suffixIcon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 17,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                    labelText: 'Postleitzahl...',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.work,
                      color: Colors.white,
                      size: 17,
                    ),
                    suffixIcon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 17,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                    labelText: 'Arbeit...',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.add_road,
                      color: Colors.white,
                      size: 17,
                    ),
                    suffixIcon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 17,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                    labelText: 'Straße...',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.location_city,
                      color: Colors.white,
                      size: 17,
                    ),
                    suffixIcon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 17,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                    labelText: 'Stadt...',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15.0,
                        color: Colors.white),
                  ),
                ),
              ),
              
              
              Center(
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, homePage),
                  child: const Text('Einreichen'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
