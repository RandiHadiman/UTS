import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/data_recipes.dart';
import 'package:flutter_application_2/data/game.dart';
import 'package:flutter_application_2/login.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: ListView.builder(
          itemCount: dataResep.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              reseps: dataResep[index],
                            )));
              },
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          dataResep[index].image,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dataResep[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black)),
                        ClipOval(
                          child: Material(
                            color: Colors.red, // button color
                            child: InkWell(
                              splashColor: Color.fromARGB(
                                  255, 196, 40, 29), // inkwell color
                              child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Icon(Icons.favorite)),
                              onTap: () {},
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    return SizedBox(
      //membuat menu drawer
      child: Drawer(
        //membuat list,
        //list digunakan untuk melakukan scrolling jika datanya terlalu panjang
        child: ListView(
          padding: EdgeInsets.zero,
          //di dalam listview ini terdapat beberapa widget drawable
          children: [
            UserAccountsDrawerHeader(
              //membuat gambar profil
              currentAccountPicture:
                  Image(image: AssetImage('assets/img/espor.gif')),
              //membuat nama akun
              accountName: Text("Copyright by Randi Hadiman"),
              //membuat nama email
              accountEmail: Text("20552011069"),
              //memberikan background
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img/esports.jpg'),
                      fit: BoxFit.cover)),
            ),
            //membuat list menu
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Beranda"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Pro Player"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.schedule_outlined),
              title: Text("Jadwal Turnamen"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.emoji_emotions),
              title: Text("Profil"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
