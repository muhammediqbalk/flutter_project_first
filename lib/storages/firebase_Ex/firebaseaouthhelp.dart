import 'package:firebase_auth/firebase_auth.dart';

class FireHelper {
  final FirebaseAuth auth = FirebaseAuth.instance;

  get user => auth.currentUser;

  Future<String?>signUp({required String email, required String pwd}) async{
    // to fetch the current logged in user
   try{
     await auth.createUserWithEmailAndPassword(email: email, password: pwd);
     return null;
   }on FirebaseAuthException catch(e){
     return e.message;
   }
  }
  // login
Future<String?>signIn({required String email, required String pass})async{
    try {
      await auth.signInWithEmailAndPassword(email: email, password: pass);
      return null;
    }on FirebaseAuthException catch(e){
      return e.message;
    }
}
Future<void> signOut() async{
    await auth.signOut();
}
  }