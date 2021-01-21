import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() async {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double containerPadding = 28.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Steven Purcell',
      theme: ThemeData(
        primaryColor: Colors.blue[300],
        // fontFamily: 'Ariel',
      ),
      home: new Scaffold(
          appBar: AppBar(
            title: Text('Steven Purcell - Experienced Data Scientist',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42.0)),
          ),
          backgroundColor: Colors.blue[100],
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: double.infinity, // fills screen horizontally
                    height: 600,
                    padding: EdgeInsets.all(containerPadding),
                    color: Colors.blue[100],
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              //Enables text wrapping
                              child: Text(
                            '''A full-stack data scientist located in Nashville, Tennessee with experience in payments and transaction data, healthcare data, and fraud detection. I use Python, SQL, Go, and Dart to solve problems, create value, and derive insight from data and analytics. Using effective communication, I provide leadership and complete projects in analytics and machine learning, web development, and API / backend development.''',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 36.0),
                          )),
                          Image.asset(
                            'assets/profile.png',
                            height: 800,
                            width: 800,
                          ),
                          // Spacer(), // Spacer solution does not work. Leaving for reference.
                        ]) //placeholder for profile image
                    ),
                // Container(
                //   width: double.infinity,
                //   height: 350,
                //   padding: EdgeInsets.all(containerPadding),
                //   color: Colors.blue[50],
                //   child: Text(
                //     "Resume/Contact",
                //     textAlign: TextAlign.left,
                //     style: TextStyle(fontWeight: FontWeight.bold),
                //   ),
                // ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Tooltip(
                        message: 'Download a resume.',
                        verticalOffset: -54,
                        height: 32,
                        child: IconButton(
                            icon: Icon(
                              Icons.article,
                              size: 24,
                            ),
                            onPressed: () async {
                              const url =
                                  'https://purcell-public.s3.amazonaws.com/Steven+Purcell+Resume+2020.pdf';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            })))
              ],
            ),
          )),
    );
  }
}
