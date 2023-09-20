//import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/presentation/sign_up.dart';
import 'package:first_app/utils/appstyles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'auth.dart';

class MyProfile extends StatefulWidget {
   const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  static final _emailController =TextEditingController();
  static final _passwordController =TextEditingController();

  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email:_emailController.text.trim(),password:_passwordController.text.trim(),
    );
  }
  void openSignUpScreen(BuildContext context){
    Navigator.of(context).pushReplacementNamed('signupScreen');
  }

  @override
  void dispose (){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Edits.bgColor,
    body: Center(
      child: SingleChildScrollView(
        child: Container(
          width: 290,
          height: 550,
          decoration: BoxDecoration(
            color: Colors.purple.shade100,
          ),
          child: Column(
            children: [
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.flight_takeoff_rounded),
                  Text(
                    "Sign in",
                    style: Edits.headLine1
                        .copyWith(color: Colors.black, fontSize: 30),
                  ),
                  const Icon(Icons.flight_land_outlined),
                ],
              ),
              const Gap(40),
              Row(
                children: [
                  const Gap(20),
                  Text(
                    "E-Mail",
                    style: Edits.headLine2.copyWith(color: Colors.black),
                  ),
                ],
              ),
              const Gap(10),
              Container(
                width: 250,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    hintText: 'Enter your e-mail',
                    iconColor: Colors.black,
                    fillColor: Colors.black,
                    hintStyle: Edits.textStyle2,
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Gap(20),
              Row(
                children: [
                  const Gap(20),
                  Text(
                    "Password",
                    style: Edits.headLine2.copyWith(color: Colors.black),
                  ),
                ],
              ),
              const Gap(10),
              Container(
                width: 250,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    hintText: 'Enter your password',
                    iconColor: Colors.black,
                    fillColor: Colors.black,
                    hintStyle: Edits.textStyle2,
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 85),
                width: 250,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [

                    ElevatedButton(
                      onPressed: () {
                        signIn();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.blue),
                        elevation: MaterialStateProperty.all(0),
                        padding: MaterialStateProperty.all(const EdgeInsets.all(
                            3)),
                      ),
                      child: Text(
                        "Sign-In",
                        style: Edits.headLine4.copyWith(color: Colors.black),
                      ),

                    ),
                  ],
                ),
              ),
              const Gap(20),//sign in
              Text(
                "Don't have an account yet? ",
                style: Edits.headLine4.copyWith(color: Colors.black),
              ),
              const Gap(5),
              GestureDetector(
                onTap:()=> openSignUpScreen(context),
                child: Text(
                  "Sign-up now",
                  style: Edits.headLine4.copyWith(color: Colors.pinkAccent),
                ),
              ),
              const Gap(30),
              Container(
                width: 250,
                height: 35,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    const Gap(40),
                    ElevatedButton(
                      onPressed: () {
                        print("I'm selected :)");
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.white),
                        elevation: MaterialStateProperty.all(0),
                        padding: MaterialStateProperty.all(const EdgeInsets.all(
                            5)),
                      ),
                      child: Text(
                        "Enter with icloud",
                        style: Edits.headLine4.copyWith(color: Colors.black),
                      ),

                    ),
                    const Gap(20),
                    const Icon(Icons.apple),
                  ],
                ),
              ), //apple
              const Gap(10),
              Container(
                width: 250,
                height: 35,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                ),
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    const Gap(40),
                    ElevatedButton(
                      onPressed: () {
                        print("I'm selected :)");
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.orange),
                        elevation: MaterialStateProperty.all(0),
                        padding: MaterialStateProperty.all(const EdgeInsets.all(
                            5)),
                      ),
                      child: Text(
                        "Enter with Game Center",
                        style: Edits.headLine4.copyWith(color: Colors.white),
                      ),
                    ),
                    const Gap(10),
                    const Icon(Icons.shop_2),
                  ],
                ),
              ), //game center
              const Gap(50),
              Text(
                "All rights are preserved",
                style: Edits.headLine4.copyWith(color: Colors.grey,fontSize: 13,),
              ),
            ],
          ),
        ),
      ),

    ),
  );
}
}

