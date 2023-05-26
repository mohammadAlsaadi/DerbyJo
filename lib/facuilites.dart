import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class facuilities extends StatefulWidget {
  const facuilities({super.key});

  @override
  State<facuilities> createState() => _facuilitiesState();
}

class _facuilitiesState extends State<facuilities> {
  dynamic item = 0;
  dynamic item2 = 0;
  dynamic item3 = 0;
  dynamic item4 = 0;
  dynamic sale = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Image.asset(
                      "images/gato.jpg",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      children: [
                        const Text(
                          "Gatorade",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text(
                          "2.5JD",
                          style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.local_offer_outlined,
                              color: Colors.red,
                            ),
                            Text("15% Discount"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 130, 10, 0),
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.redAccent),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  item -= 1;
                                });
                              },
                              child: const Icon(
                                Icons.remove_outlined,
                                color: Colors.white,
                                size: 20,
                              )),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white),
                            child: Text(
                              "${item}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  item += 1;
                                });
                              },
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Image.asset(
                      "images/water.jpg",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Text(
                          "water shrink",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text(
                          "2.5JD",
                          style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.local_offer_outlined,
                              color: Colors.red,
                            ),
                            Text("15% Discount")
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 130, 10, 0),
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.redAccent),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  item2 -= 1;
                                });
                              },
                              child: const Icon(
                                Icons.remove_outlined,
                                color: Colors.white,
                                size: 20,
                              )),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white),
                            child: Text(
                              "${item2}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  item2 += 1;
                                });
                              },
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Image.asset(
                      "images/kut.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        const Text(
                          "Red Kit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text(
                          "Free",
                          style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(45, 110, 10, 0),
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.redAccent),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  item3 -= 1;
                                });
                              },
                              child: const Icon(
                                Icons.remove_outlined,
                                color: Colors.white,
                                size: 20,
                              )),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white),
                            child: Text(
                              "${item3}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  item3 += 1;
                                });
                              },
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Image.asset(
                      "images/cuty.jpg",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Text(
                          "Yollow cut",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text(
                          "Free",
                          style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(45, 110, 10, 40),
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.redAccent),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  item4 -= 1;
                                });
                              },
                              child: const Icon(
                                Icons.remove_outlined,
                                color: Colors.white,
                                size: 20,
                              )),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white),
                            child: Text(
                              "${item4}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  item4 += 1;
                                });
                              },
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*Badge(
            position: BadgePosition.topEnd(top: 3, end: 3),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeColor: Colors.white,
            toAnimate: true,
            badgeContent: Text(
              '5',
              style: TextStyle(
                  fontSize: 8,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),*/