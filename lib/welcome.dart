import 'package:fitness_app/maintab.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(child: Image.asset("asset/img/Welcome.png", width: 300,)),
            SizedBox(height: 30,),
            Center(
                child: Text(
              "Welcome, Dear",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            )),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "You are all set now, let's reach your \ngoals together with us",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            )),
            SizedBox(height: 140,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainTab()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(142, 164, 241, 1.0),
                  minimumSize: Size(double.infinity, 60),
                ),
                child: Text(
                  "Go to Home",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )),
          ],
        ),
      ),
    );
  }
}