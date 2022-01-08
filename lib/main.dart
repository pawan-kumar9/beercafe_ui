//ignore_for_file: unnecessary_new,prefer_const_constructors,avoid_unnecessary_containers,sized_box_for_whitespace
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 140,
                    margin: EdgeInsets.only(bottom: 10),
                    child: Image.asset("assets/beer.png"),
                  ),
                  Text(
                    "deep's",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "B E E R C A F E",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  )
                ],
              ),
            )),
            Container(
              padding: const EdgeInsets.only(
                top: 60.0,
                left: 20.0,
                right: 20.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                color: Colors.yellow.shade700,
              ),
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Hello User! Welcome to Deep's Beercafe. Get the best Beer in the world, Enjoy Your meal and have a Good Day.",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonWidget("Sign In", Colors.black, Colors.white),
                        buttonWidget("Sign Up", Colors.white, Colors.black)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buttonWidget(String text, Color color, Color txtcolor) {
  return Container(
    alignment: Alignment.center,
    width: 160,
    height: 50,
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(30.0)),
    child: Text(
      text,
      style:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: txtcolor),
    ),
  );
}
