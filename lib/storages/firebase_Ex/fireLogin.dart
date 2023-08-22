import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_first/loginpage.dart';
import 'package:flutter_project_first/storages/firebase_Ex/fireRegister.dart';
import 'package:flutter_project_first/storages/firebase_Ex/firebaseaouthhelp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: LoginPage(),));
}

class LoginFire extends StatefulWidget {
  const LoginFire({super.key});

  @override
  State<LoginFire> createState() => _LoginFireState();
}

class _LoginFireState extends State<LoginFire> {

  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Firebase Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            ),
            const SizedBox(height: 20,),
            TextField(
              controller: pass,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              String username = email.text.trim();
              String password = pass.text.trim();

              FireHelper().signIn(email: username, pass: password).then((
                  value) => {
              if(value == null){
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FirebaseRegister())),

              },
                  });
            }, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
