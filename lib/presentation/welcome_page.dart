import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final userName =FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               const Text("Hello, your signed in as",style: TextStyle(fontSize: 22),),
              const Gap(10),
              Text(userName.email!,style: const TextStyle(fontSize: 22,color: Colors.deepPurpleAccent),),
              const Gap(20),
              MaterialButton(
                  onPressed:() {
                  FirebaseAuth.instance.signOut();
              },
                color: Colors.teal,
                child: Text("Sign-out"),
              )
            ],
          ),


      ),

    );
  }
}
