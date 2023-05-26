import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'PickDate.dart';
import 'checkOut.dart';

class CreatGame extends StatefulWidget {
  const CreatGame({super.key});

  @override
  State<CreatGame> createState() => _CreatGameState();
}

class _CreatGameState extends State<CreatGame> {
  var sizeOfPlayeList = ["5 x 5", "6 x 6"];
  String sizeOfPlayeValue = "5 x 5";
  int selectedOptionIndex = -1;

  void selectOption(int index) {
    setState(() {
      selectedOptionIndex = index;
    });
  }

  var statusList = ["Public", "private"];
  String statusValue = "Public";
  int selectedStatusIndex = -1;

  void selectStatus(int index) {
    setState(() {
      selectedStatusIndex = index;
    });
  }

  final List<String> cardContents = [
    'ملعب مدارس الجزيرة',
    'ملعب القوات المسلحة',
    'ملعب مدارس اكسفورد',
    'ملعب لومينوس',
    'ملعب مدارس الحكمة',
    'ملعب مدارس الخضر',
    'ملعب زين الشرف',
  ];

  final List<String> imagesStadium = [
    "stadiumImages/s1.jpg",
    "stadiumImages/s2.jpg",
    "stadiumImages/s3.jpg",
    "stadiumImages/s4.jpg",
    "stadiumImages/s5.jpg",
    "stadiumImages/s6.jpg",
    "stadiumImages/s7.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "images/left.png",
                          width: 50,
                          height: 50,
                        )),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(70, 40, 0, 0),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Creat a Game ",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.red,
                        shadows: [
                          Shadow(
                            color: Color.fromARGB(255, 208, 208, 208),
                            offset: Offset(1, 1),
                            blurRadius: 10,
                          ),
                        ],
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
            child: Stack(
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "Select Stadium",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 241, 61, 61),
                                shadows: [
                                  Shadow(
                                    color: Color.fromARGB(255, 208, 208, 208),
                                    offset: Offset(1, 1),
                                    blurRadius: 10,
                                  ),
                                ],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cardContents.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () => selectOption(index),
                            child: Card(
                              color: selectedOptionIndex == index
                                  ? Colors.red
                                  : Colors.white,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 150,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          imagesStadium[index],
                                          width: 150,
                                          height: 170,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 110, left: 4),
                                        child: Text(
                                          cardContents[index],
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            backgroundColor: Colors.red,
                                            shadows: [
                                              Shadow(
                                                color: Color.fromARGB(
                                                    255, 208, 208, 208),
                                                offset: Offset(1, 1),
                                                blurRadius: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 300),
            child: Text(
              "___________________________________________",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 241, 61, 61),
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Color.fromARGB(255, 208, 208, 208),
                    offset: Offset(1, 1),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 330, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Pick Date",
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Color.fromARGB(255, 208, 208, 208),
                        offset: Offset(1, 1),
                        blurRadius: 10,
                      ),
                    ],
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                DateTimePickerDialog(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 440),
            child: Text(
              "___________________________________________",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 241, 61, 61),
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Color.fromARGB(255, 208, 208, 208),
                    offset: Offset(1, 1),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 495, 0, 85),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 61, 61),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(80, 10, 10, 10),
                        child: Text(
                          "Player Size ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                color: Color.fromARGB(255, 208, 208, 208),
                                offset: Offset(1, 1),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: DropdownButton(
                              value: sizeOfPlayeValue,
                              onChanged: (String? value) {
                                setState(() {
                                  sizeOfPlayeValue = value!;
                                });
                              },
                              items: sizeOfPlayeList.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                            )),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 10, 10, 10),
                        child: Text(
                          "status of game ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                color: Color.fromARGB(255, 208, 208, 208),
                                offset: Offset(1, 1),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: DropdownButton(
                              value: statusValue,
                              onChanged: (String? value) {
                                setState(() {
                                  statusValue = value!;
                                });
                              },
                              items: statusList.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(120, 610, 120, 25),
            child: MaterialButton(
              minWidth: 0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const checkOut()),
                );
              },
              color: Color.fromARGB(255, 241, 61, 61),
              elevation: 10,
              height: 60,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 45),
                    child: Text(
                      "Create",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
