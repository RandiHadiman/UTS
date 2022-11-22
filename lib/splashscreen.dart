import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/homescreen.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/main.dart';

class HalamanUtama extends StatefulWidget {
  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context(), MaterialPageRoute(builder: (context) => Halamanlogin()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.newspaper,
              color: Colors.red,
              size: 50.0,
            ),
            Text(
              'Esports News',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
