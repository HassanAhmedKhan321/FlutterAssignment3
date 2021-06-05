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
            name: "IPhone 12",
            description: "5.0 23 (Reviews)",
            price: ("20 Pieces \$90"),
            quantity: "Quantity: 1",
            image: "iphone.jpg"),
        ProductBox(
            name: "Note 20 Ultra",
            description: "5.0 23 (Reviews)",
            price: ("20 Pieces \$90"),
            quantity: "Quantity: 1",
            image: "tablet.jpg"),
        ProductBox(
            name: "Macbook Air",
            description: "5.0 23 (Reviews)",
            price: ("20 Pieces \$90"),
            quantity: "Quantity: 1",
            image: "pixel.jpg"),
        ProductBox(
            name: "Macbook Pro",
            description: "5.0 23 (Reviews)",
            price: ("20 Pieces \$90"),
            quantity: "Quantity: 1",
            image: "laptop.jpg"),
        ProductBox(
            name: "Gaming Pc",
            description: "5.0 23 (Reviews)",
            price: ("20 Pieces \$90"),
            quantity: "Quantity: 1",
            image: "floppydisk.jpg"),
      ],
    ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key,
      this.name,
      this.description,
      this.price,
      this.image,
      this.quantity})
      : super(key: key);
  final String name;
  final String description;
  final String price;
  final String quantity;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/appimages/" + image),
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: (17))),
                          Text(this.description),
                          Text(
                            this.price,
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(this.quantity),
                        ],
                      )))
            ])));
  }
}
