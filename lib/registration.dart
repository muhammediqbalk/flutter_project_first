import 'package:flutter/material.dart';
import 'package:flutter_project_first/loginpage.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registration"),),
      body: SingleChildScrollView(
        child: Column(
          children: [ Image.asset("assets/icons/person.png",height: 100,width: 100,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
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
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "Last Name",
                  helperText:"Last name must not empty ",
                  labelText: "Lastname",
                  prefixIcon: const Icon(Icons.person),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '#',
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

            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '#',
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "Conform Password",
                  helperText: "Conform Password ust contain 8 characters",
                  labelText: "Conform password",
                  prefixIcon: const Icon(Icons.visibility_off_sharp),
                  suffixIcon: const Icon(Icons.visibility),
                ),
              ),
            ),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (contex)=> LoginPage()));
            },
                child: const Text("Register")),
        ],
      ),
      ),
    );
  }
}
