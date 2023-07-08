import 'package:flutter/material.dart';
import 'package:flutter_project_first/loginpage.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final formkey = GlobalKey<FormState>(); // validate the entire form
  var confirmpassword; //to store
  bool showpassword = true;
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/icons/person.png",
                height: 100,
                width: 100,
              ),

              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: TextFormField(
              //     decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(30),
              //       ),
              //
              //       hintText: "Username",
              //       helperText: "Username must be an email",
              //       labelText: "Username",
              //       prefixIcon: const Icon(Icons.person),
              //     ),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Email",
                    helperText: "Email must not empty ",
                    labelText: "Email",
                    prefixIcon: const Icon(Icons.person),
                  ),
                  validator: (email) {
                    if (email!.isEmpty || !email.contains('@')) {
                      return "Enter a valid email / field must not be empty";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: TextFormField(
                  obscureText: showpassword,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Password",
                    helperText: "Password ust contain 6 characters",
                    labelText: "password",
                    prefixIcon: const Icon(Icons.visibility_off_sharp),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpassword) {
                              showpassword = false;
                            } else {
                              showpassword = true;
                            }
                          });
                        },
                        icon: Icon(showpassword == true
                            ? Icons.visibility
                            : Icons.visibility_off_sharp)),
                  ),
                  validator: (password) {
                    confirmpassword = password;
                    if (password!.isEmpty || password.length < 6) {
                      return "password length should be greater than 6 ";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: "Conform Password",
                      helperText: "Conform Password ust contain 6 characters",
                      labelText: "Conform password",
                      prefixIcon: const Icon(Icons.visibility_off_sharp),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpass) {
                                showpass = false;
                              } else {
                                showpass = true;
                              }
                            });
                          },
                          icon: Icon(showpass == true
                              ? Icons.visibility
                              : Icons.visibility_off_sharp))),
                  validator: (cpassword) {
                    if (cpassword != confirmpassword || cpassword!.isEmpty) {
                      return "Password is Incorrect / empty";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    var isValid = formkey.currentState!.validate();
                    if (isValid == true) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (contex) => LoginPage()));
                    }
                  },
                  child: const Text("Register")),
            ],
          ),
        ),
      ),
    );
  }
}
