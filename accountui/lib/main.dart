import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecom App UI',
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.red),
              actionsIconTheme: IconThemeData(color: Colors.black),
              centerTitle: true,
              elevation: 10,
              titleTextStyle: TextStyle(color: Colors.black))),
      home: HomePage(),
    );
  }
}

// Home Screen
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ecom App UI',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
      children: <Widget>[
        ProductBox(
            name: "User",
            description: "abc@gmail.com",
            price: ("Logout"),
            image: "iphone.jpg"),
        ListTile(
          title: Text(
            'Account Information',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: (22)),
          ),
        ),
        ListTile(
          title: Text(
            'Full Name',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text('User'),
        ),
        ListTile(
          title: Text(
            'Email',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text('User@gmail.com'),
        ),
        ListTile(
          title: Text(
            'Phone',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text('+0900-786 01'),
        ),
        ListTile(
          title: Text(
            'Address',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text('New York,Random Street House No.72'),
        ),
        ListTile(
          title: Text(
            'Gender',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text('Male'),
        ),
        ListTile(
          title: Text(
            'Date of Birth',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text('October 13, 1999'),
        ),
      ],
    ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({
    Key key,
    this.name,
    this.description,
    this.price,
    this.image,
  }) : super(key: key);
  final String name;
  final String description;
  final String price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        height: 200,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("assets/appimages/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: (30))),
                          Text(
                            this.description,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            this.price,
                            style: TextStyle(
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      )))
            ]));
  }
}
