import 'package:fitness_app/welcome.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  void _validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Welcome()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Center(
                    child: Image.asset(
                  "asset/img/05.jpg",
                  width: 300,
                )),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                  "Let's Complete You Profile",
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
                  "It will help us know more about you!",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(247, 248, 248, 1.0),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      controller: genderController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Gender is required";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          prefixIcon: Icon(
                            Icons.person,
                            size: 13,
                          ),
                          hintText: "Your Gender",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(179, 172, 174, 1.0),
                              fontSize: 13),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(247, 248, 248, 1.0),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      controller: dobController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Date of Birth is required";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          prefixIcon: Icon(
                            Icons.calendar_month,
                            size: 13,
                          ),
                          hintText: "Date of Birth",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(179, 172, 174, 1.0),
                              fontSize: 13),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(247, 248, 248, 1.0),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      controller: weightController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Weight is required";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          prefixIcon: Icon(
                            Icons.monitor_weight,
                            size: 13,
                          ),
                          hintText: "Your Weight in KG",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(179, 172, 174, 1.0),
                              fontSize: 13),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(247, 248, 248, 1.0),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      controller: heightController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Height is required";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          prefixIcon: Icon(
                            Icons.arrow_upward_rounded,
                            size: 13,
                          ),
                          hintText: "Your Height in CM",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(179, 172, 174, 1.0),
                              fontSize: 13),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: ElevatedButton(
                      onPressed: () {
                        _validateAndSubmit();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(142, 164, 241, 1.0),
                        minimumSize: Size(double.infinity, 60),
                      ),
                      child: Text(
                        "Next >",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}