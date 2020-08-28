import 'package:flutter/material.dart';

void main() async {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double containerPadding = 16.0;

  @override
  Widget build(BuildContext context) {
    double tileHeight = 5.0;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Steven Purcell',
      theme: ThemeData(
        primaryColor: Colors.amber[300],
        // fontFamily: 'Ariel',
      ),
      home: new Scaffold(
          appBar: AppBar(
            title: Text('Steven Purcell - Experienced Data Scientist',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42.0)),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: double.infinity, // fills screen horizontally
                    height: 600,
                    padding: EdgeInsets.all(containerPadding),
                    color: Colors.amber[200],
                    child: Row(children: <Widget>[
                      Expanded(
                          //Enables text wrapping
                          child: Text(
                        '''A full-stack data scientist located in Nashville, Tennessee with experience in payments and transaction data, healthcare data, and fraud detection. I use Python, SQL, Go, and Dart to solve problems, create value, and derive insight from data and analytics. Using effective communication, I provide leadership and complete projects in analytics and machine learning, web development, and API / backend development.''',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 36.0),
                      )),
                      FlutterLogo(
                        size: 250,
                      )
                    ]) //placeholder for profile image
                    ),
                // Container(
                //   width: double.infinity,
                //   height: 45,
                //   padding: EdgeInsets.all(containerPadding),
                //   color: Colors.amber[100],
                //   child: const Text(
                //     "Projects",
                //     textAlign: TextAlign.center,
                //     style: TextStyle(fontWeight: FontWeight.bold),
                //   ),
                // ),
                Container(
                    width: double.infinity,
                    height: 500,
                    padding: EdgeInsets.all(containerPadding),
                    color: Colors.amber[100],
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(8),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          height: tileHeight,
                          padding: const EdgeInsets.all(8),
                          child: const Text(
                            "DadJokes, an Android app available in the Android Play Store. This app uses a publicly available API to deliver a random joke at the tap of a button. Designed completely in Dart using the Flutter framework.",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          color: Colors.blue[100],
                        ),
                        Container(
                          height: tileHeight,
                          padding: const EdgeInsets.all(8),
                          child: const Text(
                            "Occam's Razor, a Python script designed to test several supervised machine learning classification algorithms, input features,  and rounding threshholds to select the best algorithm for classifying a data set.",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          color: Colors.blue[300],
                        ),
                        Container(
                          height: tileHeight,
                          padding: const EdgeInsets.all(8),
                          child: const Text(
                            "Github repository containing a collection of algorithms and models written in Go and Python for quick use and deployment.",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          color: Colors.blue[500],
                        ),
                        Container(
                          height: tileHeight,
                          padding: const EdgeInsets.all(8),
                          child: const Text(
                            "TableGenie, a Python script for scraping pdf tables and converting to clean csv files.",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          color: Colors.blue[600],
                        ),
                      ],
                    )),
                Container(
                  width: double.infinity,
                  height: 500,
                  padding: EdgeInsets.all(containerPadding),
                  color: Colors.amber[50],
                  child: Text(
                    "Resume/Contact",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
