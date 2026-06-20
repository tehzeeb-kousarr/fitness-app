import 'package:fitness_app/bdscreen.dart';
import 'package:flutter/material.dart';

class Boardingscreen extends StatefulWidget {
  const Boardingscreen({super.key});

  @override
  State<Boardingscreen> createState() => _BoardingscreenState();
}

class _BoardingscreenState extends State<Boardingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(children: [
          SizedBox(height: 250),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Fitness",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "X",
              style: TextStyle(
                  color: const Color.fromRGBO(142, 164, 241, 100),
                  fontSize: 40,
                  fontWeight: FontWeight.w700),
            )
          ]),
          SizedBox(
            height: 5,
          ),
          Text(
            "Everybody Can Train",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 250,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(142, 164, 241, 1.0),
                minimumSize: Size(double.infinity, 60),
              ),
              child: Text(
                "Get Started",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )
            )
        ]),
      ),
    );
  }
}