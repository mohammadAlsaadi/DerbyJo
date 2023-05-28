import 'package:check_out/footballCategories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Top Bar
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                      //Search
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 210,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5FAFF),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 236, 155, 155),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: 11.0, left: 10.0),
                                child: Image(
                                  height: 21,
                                  image: Svg('icons/search.svg'),
                                  color: Color.fromARGB(255, 220, 103, 103),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 7, bottom: 10),
                                child: Text(
                                  " search Categories or list ",
                                  style: TextStyle(
                                      fontSize: 13,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "images/filter.png",
                                color: Color.fromARGB(255, 220, 103, 103),
                              ))),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 260, 0),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 27,
                        decoration: TextDecoration.none,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 8.0),
                          child: Container(
                            width: 175,
                            height: 250,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(
                                  "images/football.jpg",
                                  width: 175,
                                  height: 250,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                    top: 160,
                                    right: 5,
                                    left: 0,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Football",
                                          style: TextStyle(
                                              fontSize: 20,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 0, 30, 0),
                                          child: MaterialButton(
                                            minWidth: 0,
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const FootballCategories()),
                                              );
                                            },
                                            color: Color.fromARGB(
                                                255, 218, 44, 93),
                                            elevation: 10,
                                            height: 30,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Explore ",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 8.0),
                          child: Container(
                            width: 175,
                            height: 250,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(
                                  "images/basketball.jpg",
                                  width: 175,
                                  height: 250,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                    top: 160,
                                    right: 5,
                                    left: 0,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Bsaketball",
                                          style: TextStyle(
                                              fontSize: 20,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 0, 30, 0),
                                          child: MaterialButton(
                                            minWidth: 0,
                                            onPressed: () {},
                                            color: Color.fromARGB(
                                                255, 218, 44, 93),
                                            elevation: 10,
                                            height: 30,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Explore ",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
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
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 8.0),
                          child: Container(
                            width: 175,
                            height: 250,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(
                                  "images/tennis.jpg",
                                  width: 175,
                                  height: 250,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                    top: 160,
                                    right: 5,
                                    left: 0,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Tennis",
                                          style: TextStyle(
                                              fontSize: 20,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 0, 30, 0),
                                          child: MaterialButton(
                                            minWidth: 0,
                                            onPressed: () {},
                                            color: Color.fromARGB(
                                                255, 218, 44, 93),
                                            elevation: 10,
                                            height: 30,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Explore ",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 8.0),
                          child: Container(
                            width: 175,
                            height: 250,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(
                                  "images/volleyball.png",
                                  width: 175,
                                  height: 250,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                    top: 160,
                                    right: 5,
                                    left: 0,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Volleyball",
                                          style: TextStyle(
                                              fontSize: 20,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 0, 30, 0),
                                          child: MaterialButton(
                                            minWidth: 0,
                                            onPressed: () {},
                                            color: Color.fromARGB(
                                                255, 218, 44, 93),
                                            elevation: 10,
                                            height: 30,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Explore ",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
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
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 8.0),
                          child: Container(
                            width: 175,
                            height: 250,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(
                                  "images/badel.jpg",
                                  width: 175,
                                  height: 250,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                    top: 160,
                                    right: 5,
                                    left: 0,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Badel",
                                          style: TextStyle(
                                              fontSize: 20,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 0, 30, 0),
                                          child: MaterialButton(
                                            minWidth: 0,
                                            onPressed: () {},
                                            color: Color.fromARGB(
                                                255, 218, 44, 93),
                                            elevation: 10,
                                            height: 30,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Explore ",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 8.0),
                          child: Container(
                            width: 175,
                            height: 250,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(
                                  "images/table tennis.jpg",
                                  width: 175,
                                  height: 250,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                    top: 160,
                                    right: 5,
                                    left: 0,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Table Tennis",
                                          style: TextStyle(
                                              fontSize: 20,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 0, 30, 0),
                                          child: MaterialButton(
                                            minWidth: 0,
                                            onPressed: () {},
                                            color: Color.fromARGB(
                                                255, 218, 44, 93),
                                            elevation: 10,
                                            height: 30,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Explore ",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
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
                        )
                      ],
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
