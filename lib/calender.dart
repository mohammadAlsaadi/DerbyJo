import 'package:check_out/checkOut.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:convert';

import 'PickDate.dart';

class booking extends StatefulWidget {
  const booking({super.key});

  @override
  State<booking> createState() => _bookingState();
}

class _bookingState extends State<booking> {
  @override
  var selectedDate;
  Widget build(BuildContext context) {
    return Material(
        child: Stack(children: [
      Container(
        width: 411,
        height: 250,
        color: Colors.white,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Image.asset(
                "images/stadiumphoto.png",
                fit: BoxFit.fill,
                width: 411,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(
                      "images/left.png",
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 10, 0),
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                  child: FavoriteButton(
                    iconSize: 40,
                    isFavorite: true,
                    // iconDisabledColor: Colors.white,
                    valueChanged: (_isFavorite) {
                      print('Is Favorite : $_isFavorite');
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
          padding: const EdgeInsets.fromLTRB(20, 170, 20, 0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(17)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    height: 30,
                    child: const Text("Alquaat Almusalahat Stadium",
                        style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                  child: Row(children: const [
                    Text(
                      "Amman-Jordan",
                      style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.none,
                          color: Colors.black),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(130, 5, 0, 0),
                  child: Row(children: [
                    Row(
                      children: const [
                        Text(
                          "Open",
                          style: TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "10am - 2am",
                            style: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.none,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(120, 3, 0, 0),
                  child: Row(children: const [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.yellow,
                    ),
                    Text(
                      "2.5 km",
                      style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.none,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        "5.0",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.star_outline_rounded,
                      color: Colors.amber,
                    ),
                  ]),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: Container(
                              height: 200,
                              width: 350,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("images/stadiumtraning.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 30, 0, 0),
                                    child: Row(children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 0),
                                            child: IconButton(
                                              icon: Image.asset(
                                                "images/bader.jpg",
                                                width: 600,
                                                height: 300,
                                              ),
                                              onPressed: () {},
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 0, 0),
                                            child: IconButton(
                                              icon: Image.asset(
                                                "images/add3.png",
                                                width: 500,
                                                height: 300,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const addPlayer()),
                                                );
                                              },
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 0, 0),
                                            child: IconButton(
                                              icon: Image.asset(
                                                "images/add3.png",
                                                width: 500,
                                                height: 300,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const addPlayer()),
                                                );
                                              },
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 0, 0),
                                            child: IconButton(
                                              icon: Image.asset(
                                                "images/add3.png",
                                                width: 500,
                                                height: 300,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const addPlayer()),
                                                );
                                              },
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 0, 0),
                                            child: IconButton(
                                              icon: Image.asset(
                                                "images/add3.png",
                                                width: 500,
                                                height: 300,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const addPlayer()),
                                                );
                                              },
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 0, 0),
                                            child: IconButton(
                                              icon: Image.asset(
                                                "images/add3.png",
                                                width: 500,
                                                height: 300,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const addPlayer()),
                                                );
                                              },
                                            )),
                                      ),
                                    ]),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 30, 0, 0),
                                        child: Row(children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                    "images/add3.png",
                                                    width: 600,
                                                    height: 300,
                                                    color: Colors.white,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const addPlayer()),
                                                    );
                                                  },
                                                )),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        6, 0, 0, 0),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                    "images/add3.png",
                                                    width: 500,
                                                    height: 300,
                                                    color: Colors.white,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const addPlayer()),
                                                    );
                                                  },
                                                )),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        6, 0, 0, 0),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                    "images/add3.png",
                                                    width: 500,
                                                    height: 300,
                                                    color: Colors.white,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const addPlayer()),
                                                    );
                                                  },
                                                )),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        6, 0, 0, 0),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                    "images/add3.png",
                                                    width: 500,
                                                    height: 300,
                                                    color: Colors.white,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const addPlayer()),
                                                    );
                                                  },
                                                )),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        6, 0, 0, 0),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                    "images/add3.png",
                                                    width: 500,
                                                    height: 300,
                                                    color: Colors.white,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const addPlayer()),
                                                    );
                                                  },
                                                )),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        6, 0, 0, 0),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                    "images/add3.png",
                                                    width: 500,
                                                    height: 300,
                                                    color: Colors.white,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const addPlayer()),
                                                    );
                                                  },
                                                )),
                                          ),
                                        ]),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(52, 0, 40, 25),
                              child: MaterialButton(
                                minWidth: 0,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const checkOut()),
                                  );
                                },
                                color: Color.fromARGB(255, 241, 61, 61),
                                elevation: 10,
                                height: 50,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                                      child: Text(
                                        "Book a game",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

//#################    calender here    ######################
              ],
            ),
          ))
    ]));
  }
}

class addPlayer extends StatefulWidget {
  const addPlayer({super.key});

  @override
  State<addPlayer> createState() => _addPlayerState();
}

class _addPlayerState extends State<addPlayer> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 130, 50, 130),
          child: Scaffold(
              body: Container(
                  child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 225, 0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "images/left.png",
                        )),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      labelText: 'User Name',
                      isDense: true,
                      prefixIcon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(150, 10, 50, 60),
              child: MaterialButton(
                minWidth: 0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const booking()),
                  );
                },
                color: Color.fromARGB(255, 218, 44, 93),
                elevation: 10,
                height: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "find ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Align(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "images/bader.jpg",
                          width: 50,
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Mohammad Bader",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 50, 50, 20),
                      child: MaterialButton(
                        minWidth: 0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const booking()),
                          );
                        },
                        color: Color.fromARGB(255, 218, 44, 93),
                        elevation: 10,
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                              child: Row(
                                children: [
                                  Text(
                                    "Add ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ])))),
    );
  }
} /**/
