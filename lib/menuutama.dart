import 'package:flutter/material.dart';
import 'package:flutternew/halaman_1.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'layout Sederhana',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Layout'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text(
          'Ini halaman utama',
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Herry Prasetyo'),
              accountEmail: Text('herry081288@gmail.com'),
              currentAccountPicture: Image.network(
                'https://pbs.twimg.com/profile_images/1053055123193122816/IUwo6l_Q_400x400.jpg',
              ),
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
            ListTile(
              title: Text('Halaman 1'),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Halaman1())),
            ),
            ListTile(
              title: Text('Halaman 2'),
              onTap: () {
                //route navigasi //
              },
            ),
            ListTile(
              title: Text('Halaman 3'),
              onTap: () {
                //route navigasi //
              },
            ),
          ],
        ),
      ),
    );
  }
}
