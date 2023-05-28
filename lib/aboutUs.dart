import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                "About DERBY JO ",
                style: TextStyle(
                    fontSize: 20,
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
        backgroundColor: Colors.grey,
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Throughout the past century, people who want to practice sports used the traditional method of booking playgrounds, in which they either reserve a playground at specific times and locations or with specific individuals.",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontFamily: AutofillHints.addressCity),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "It takes a lot of time and effort for some people who are passionate about sports to try to find suitable people to practice sports with, as well as suitable places like playgrounds, by randomly searching groups on social networking sites, searching in nearby places, or asking people close to them. Booking playgrounds and finding people to play sports online has become an increasingly popular activity worldwide duo to the rapid development of today’s technology and the widespread availability of the internet.",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontFamily: AutofillHints.addressCity),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "By investigating and taking a gander of the whole market for the new pattern or by following what their #1 superstars are wearing. Even though celebrities are the most stylish people, they rely on the best stylists in the world for their looks. With the fast improvement of the present innovation and the web accessible in the possession of a large portion of the residents of the world, web based shopping has turned into an undeniably well-known action from one side of the planet to the other.",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontFamily: AutofillHints.addressCity),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "You can browse numerous websites and applications from your mobile phone from many playgrounds and endless options from the comfort of your home, making playing sports online possibly easier, faster, and safer than the traditional method. Additionally, online playground reservations are secure. Online playground reservations offer a number of benefits, including the ability to get recommendations about what you might like from playgrounds, facilities and suitable players based on a wide range options available near you at the right times. Simply select your location and the time works best for you, and the system will then show you playgrounds and people who are similar to what you are looking for. You can also preview the quality of playgrounds and player by reading reviews and player ratings. However, there is some hustle, which we will talk about in the problems and solutions that follow.",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontFamily: AutofillHints.addressCity),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
