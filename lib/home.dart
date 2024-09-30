import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapplication/ridebook.dart';

class NewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RoutePage();
  }
}

class _RoutePage extends State<NewPage> {
  var from = TextEditingController();
  var _to = TextEditingController();

  String? tap;
  String? tap2;

  @override
  Widget build(BuildContext context) {
    final double scrHeight = MediaQuery.of(context).size.height * 1.04;
    final double scrWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: scrHeight, // Using screen height
          width: scrWidth, // Correct width here
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: scrHeight * 0.53, // Fixed height
                    width: scrWidth, // Full width of screen
                    decoration: BoxDecoration(
                      color: Colors.cyan.shade200,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: scrHeight * 0.07),
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Text(
                              "Where are \nyou going",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: scrHeight * 0.03),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.white54,
                                                blurStyle: BlurStyle.inner,
                                                blurRadius: 2,
                                                spreadRadius: 1)
                                          ]),
                                    ),
                                    Container(
                                      height: scrHeight * 0.15,
                                      width: 1,
                                      color: Colors.white,
                                    ),
                                    Container(
                                      height: 6,
                                      width: 6,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "From",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  SizedBox(
                                    width: 200, // Fixed width for TextField
                                    child: TextField(
                                      controller: from,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Gujranwala',
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                          )),
                                    ),
                                  ),
                                  // SizedBox(height: 10),
                                  Container(
                                    height:
                                        scrHeight * 0.0014, // Divider height
                                    width: scrWidth *
                                        0.6, // Divider width matching TextField width
                                    color: Colors.white, // Divider color
                                  ),
                                  SizedBox(height: scrHeight * 0.01),
                                  Text(
                                    "To",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  SizedBox(
                                    width: 200, // Fixed width for TextField
                                    child: TextField(
                                      controller: _to,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Sialkot',
                                          hintStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: scrHeight * 0.47,
                      width: scrWidth * 0.8,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Date",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            buttonRow(),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Passenger",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            passButtonRow(),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: scrWidth * 0.8,
                              height: scrHeight * 0.06,
                              child: ElevatedButton(
                                  onPressed: () {
                                    String _from = from.text;
                                    String to= _to.text;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SelectRide(from.text.toString(), _to.text.toString())));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blueGrey),
                                  child: Text(
                                    "Search",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildButton("Today"),
        SizedBox(
          width: 40,
        ),
        buildButton("Yesterday"),
        SizedBox(
          width: 40,
        ),
        buildButton("Other Date", icon: Icons.calendar_month),
      ],
    );
  }

  Widget buildButton(String text, {IconData? icon}) {
    return InkWell(
        onTap: () {
          setState(() {
            tap = text; // Update the tapped button
          });
        },
        //splashColor: Colors.cyan,
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(color: tap == text ? Colors.cyan : Colors.black),
            ),
            if (icon != null) ...[
              Icon(icon, color: tap == text ? Colors.cyan : Colors.black),
              const SizedBox(width: 5),
            ],
          ],
        ));
  }

  Widget passButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        passButton('1'),
        passButton('2'),
        passButton('3'),
        passButton('4'),
      ],
    );
  }

  Widget passButton(String text) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            tap2 = text;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: tap2 == text ? Colors.cyan : Colors.white,
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.black),
        ));
  }
}
