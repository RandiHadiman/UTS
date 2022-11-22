import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/homescreen.dart';
import 'package:flutter_application_2/register.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Login",
    home: Halamanlogin(),
    debugShowCheckedModeBanner: false,
  ));
}

class Halamanlogin extends StatefulWidget {
  const Halamanlogin({super.key});

  @override
  State<Halamanlogin> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<Halamanlogin> {
  bool visibilityPass = false;

  final String MyUser = 'Admin';
  final String MyPass = '12345';

  TextEditingController vUser = TextEditingController();
  TextEditingController vPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(100),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black, Colors.red])),
        child: Card(
          elevation: 10,
          color: Colors.black,
          shadowColor: Colors.black,
          child: Column(children: [
            Container(
              width: 200,
              padding: EdgeInsets.all(10),
              height: 200,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/esports.jpg'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Color.fromARGB(255, 187, 23, 12),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                      controller: vUser,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0)),
                        labelText: 'Username',
                        hintText: 'Inputkan Username Anda',
                        prefixIcon: Icon(Icons.person),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                      controller: vPass,
                      obscureText: !visibilityPass,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0)),
                          labelText: 'Password',
                          hintText: 'Inputkan Password Anda',
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visibilityPass = !visibilityPass;
                              });
                            },
                            icon: visibilityPass
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                          ))),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: (() {
                        ceklogin(context);
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => home()));
                      }),
                      child: Text("LOGIN")),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: (() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Halamanregister()));
                    }),
                    child: Text("REGISTER"),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  void ceklogin(BuildContext context) {
    // final String MyUser = 'Admin';
    //final String MyPass = '12345';
    if (vUser.text == MyUser && vPass.text == MyPass) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Halamanlogin(),
          ));
    }
  }
}
