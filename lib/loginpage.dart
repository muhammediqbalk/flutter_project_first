// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_project_first/home.dart';
import 'package:flutter_project_first/registration.dart';

class LoginPage extends StatelessWidget {

  String username ="iqbal@12";
  String password ="asd123";

  final uname = TextEditingController();
  final pass =TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"),),
      body: Column(
        children: [
          Image.asset("assets/images/1image.png",height: 100,width: 100,),
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: uname,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              hintText: "Username",
                helperText:"Username must be an email",
                labelText: "Username",
                prefixIcon: const Icon(Icons.person),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
            child: TextField(
              controller: pass,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              hintText: "Password",
                helperText: "Password ust contain 8 characters",
                labelText: "password",
                prefixIcon: const Icon(Icons.visibility_off_sharp),
                suffixIcon: const Icon(Icons.visibility),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            if(uname.text == username || pass.text == password) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (contex) => const HomePage()));
            }
          },
              child: const Text("Login")),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (contex)=> const RegistrationPage()));
          },
              child: const Text("Not a User!!!!! Register Here...")),
        ],
      ),
    );
  }
}
