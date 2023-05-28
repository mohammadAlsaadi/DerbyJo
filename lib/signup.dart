import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:location/location.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(85, 0, 0, 0),
              child: Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Image.asset("images/dj3.png"),
            )
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: signupPage(),
    );
  }
}

class signupPage extends StatefulWidget {
  const signupPage({super.key});

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  bool _isObsecure = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 80, 224, 10),
            child: Text(
              "Email  Address",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              25,
              0,
              20,
              0,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                labelText: ' Email Address',
                isDense: true,
                prefixIcon: Icon(Icons.email_rounded),
              ),
              keyboardType: TextInputType.emailAddress,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 260, 10),
            child: Text(
              "Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 20, 0),
            child: TextFormField(
              obscureText: _isObsecure,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                labelText: ' Password ',
                isDense: true,
                prefixIcon: const Icon(Icons.lock),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 200, 10),
            child: Text(
              "Confirm Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 20, 0),
            child: TextFormField(
              obscureText: _isObsecure,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                labelText: ' Password ',
                isDense: true,
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObsecure = !_isObsecure;
                      });
                    },
                    icon: Icon(
                        _isObsecure ? Icons.visibility : Icons.visibility_off)),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 60, 70, 0),
            child: MaterialButton(
              minWidth: 0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const signupPage2()),
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
                    padding: EdgeInsets.fromLTRB(90, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Next ",
                          style: TextStyle(
                              fontSize: 25,
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
    );
  }
}

class signupPage2 extends StatefulWidget {
  const signupPage2({super.key});

  @override
  State<signupPage2> createState() => _signupPage2State();
}

class _signupPage2State extends State<signupPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(85, 0, 0, 0),
              child: Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Image.asset("images/dj3.png"),
            )
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: signUpPage2widget(),
    );
  }
}

class signUpPage2widget extends StatefulWidget {
  const signUpPage2widget({super.key});

  @override
  State<signUpPage2widget> createState() => _signUpPage2widgetState();
}

class _signUpPage2widgetState extends State<signUpPage2widget> {
  int selectedValue = 14;
  List<DropdownMenuItem> Age() {
    List<DropdownMenuItem> dropDownItem = [];
    for (int i = 14; i < 60; i++) {
      int playerAge = i;
      var newItem = DropdownMenuItem(
        child: Text("${playerAge}"),
        value: playerAge,
      );
      dropDownItem.add(newItem);
    }
    return dropDownItem;
  }

  var genderList = ["male", "female"];
  String genderValue = "male";
  var CityList = [
    "Amman",
    "Irbid",
    "Ajloun",
    "Jerash",
    "Mafraq",
    "	Salt",
    "Zarqa",
    "Madaba",
    "Al Karak",
    "Tafilah",
    "	Ma'an",
    "Aqaba"
  ];
  String CityValue = "Amman";
  var regionList = [
    "Alhashmi Alshamali",
    "Tabarbor",
    "shafa Badran",
    "Abdoon",
    "Jabal Alhuseen",
    "Marka",
    "Khalda",
    "Alshmisani",
    "Aldahieh",
    "Marj Alhamam"
  ];

  String ragionValue = "Alhasmi";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 70, 270, 10),
            child: Text(
              " User Name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              25,
              0,
              20,
              0,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                labelText: 'User Name',
                isDense: true,
                prefixIcon: Icon(Icons.email_rounded),
              ),
              keyboardType: TextInputType.emailAddress,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 245, 10),
            child: Text(
              "Phone Number",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 20, 0),
            child: TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                labelText: 'Phone Number',
                isDense: true,
                prefixIcon: const Icon(Icons.local_phone_outlined),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 0, 0),
            child: Material(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          "Age ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 232, 232, 232),
                              borderRadius: BorderRadius.circular(10)),
                          child: DropdownButton(
                            value: selectedValue,
                            items: Age(),
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          "Gender ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 232, 232),
                                borderRadius: BorderRadius.circular(10)),
                            child: DropdownButton(
                              value: genderValue,
                              onChanged: (String? value) {
                                setState(() {
                                  genderValue = value!;
                                });
                              },
                              items: genderList.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 0, 0),
            child: Material(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          "City ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 232, 232),
                                borderRadius: BorderRadius.circular(10)),
                            child: DropdownButton(
                              value: CityValue,
                              onChanged: (String? value) {
                                setState(() {
                                  CityValue = value!;
                                });
                              },
                              items: CityList.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          "region ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 232, 232),
                                borderRadius: BorderRadius.circular(10)),
                            child: DropdownButton(
                              value: CityValue,
                              onChanged: (String? value) {
                                setState(() {
                                  CityValue = value!;
                                });
                              },
                              items: CityList.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 50, 70, 0),
            child: MaterialButton(
              minWidth: 0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Signup()),
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
                    padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 25,
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
    );
  }
}
