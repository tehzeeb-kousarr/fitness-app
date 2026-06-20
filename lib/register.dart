import 'package:fitness_app/login.dart';
import 'package:fitness_app/profile.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>(); // Add form key for validation
  bool tracker = false;

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      if (!tracker) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text("You must accept the Privacy Policy and Terms of Use"),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Profile()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Center(
                    child: Text(
                  "Hey There",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )),
                const Center(
                    child: Text(
                  "Create an Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )),
                const SizedBox(height: 20),

                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(247, 248, 248, 1.0),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    controller: _firstNameController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "First name is required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        prefixIcon: const Icon(Icons.person, size: 13),
                        hintText: "First Name",
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(179, 172, 174, 1.0),
                            fontSize: 13),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                const SizedBox(height: 10),

                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(247, 248, 248, 1.0),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    controller: _lastNameController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Last name is required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        prefixIcon: const Icon(Icons.person, size: 13),
                        hintText: "Last Name",
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(179, 172, 174, 1.0),
                            fontSize: 13),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                const SizedBox(height: 10),

                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(247, 248, 248, 1.0),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Email is required";
                      }
                      if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                          .hasMatch(value)) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        prefixIcon: const Icon(Icons.email, size: 13),
                        hintText: "Email",
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(179, 172, 174, 1.0),
                            fontSize: 13),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                const SizedBox(height: 10),

                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(247, 248, 248, 1.0),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password is required";
                      }
                      if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        prefixIcon: const Icon(Icons.lock, size: 13),
                        hintText: "Password",
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(179, 172, 174, 1.0),
                            fontSize: 13),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.black,
                        side: const BorderSide(color: Colors.black),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                        value: tracker,
                        onChanged: (value) {
                          setState(() {
                            tracker = !tracker;
                          });
                        }),
                    const Text(
                      " By continuing you accept our Privacy Policy and \nTerms of Use",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(height: 50),

                ElevatedButton(
                    onPressed: _validateAndSubmit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(142, 164, 241, 1.0),
                      minimumSize: const Size(double.infinity, 60),
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    )),
                const SizedBox(height: 15),
                SizedBox(
                  height: 15,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Already have an Account? ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromRGBO(142, 164, 241, 1.0),
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ))
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
