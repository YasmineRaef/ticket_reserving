import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/presentation/profile.dart';
import 'package:first_app/utils/appstyles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  static final _emailController2 =TextEditingController();
  static final _passwordController2 =TextEditingController();
  static final _confirmedPasswordController =TextEditingController();

  Future signUp() async{
   if(samePass()){
     await FirebaseAuth.instance.createUserWithEmailAndPassword(
         email:_emailController2.text.trim(),password:_passwordController2.text.trim()
     );
   }
    Navigator.of(context).pushNamed('myAuth');
  }

  bool samePass(){
    if(_passwordController2.text.trim() == _confirmedPasswordController.text.trim()){
      return true;
    }
    else {
      return false;
    }
  }

  void openSignInScreen(BuildContext context){
    Navigator.of(context).pushReplacementNamed('pro');
  }

  /*@override
  void dispose (){
    super.dispose();
    _emailController2.dispose();
    _passwordController2.dispose();
    _confirmedPasswordController.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Edits.bgColor,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 290,
            height: 550,
            decoration: BoxDecoration(
              color: Colors.pink.shade100,
            ),
            child: Column(
                children: [
                   const Gap(20),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      const Icon(Icons.flight_takeoff_rounded),
                        Text(
                           "Sign Up",
                            style: Edits.headLine2.copyWith(color: Colors.black, fontSize: 30),
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
                    width: 250, height: 30,
                     decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),color: Colors.white,
                     ),
                     padding: const EdgeInsets.all(5),
                     child: TextField(
                     controller: _emailController2,
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
                      controller: _passwordController2,
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
                  Row(
                    children: [
                      const Gap(20),
                      Text(
                        "Confirm Password",
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
                      controller: _confirmedPasswordController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        hintText: 'Confirm your password',
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
                            signUp();
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.blue),
                            elevation: MaterialStateProperty.all(0),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(
                                3)),
                          ),
                          child: Text(
                            "Sign-Up",
                            style: Edits.headLine4.copyWith(color: Colors.black),
                          ),

                        ),
                      ],
                    ),
                  ),
                  const Gap(20),//sign in
                  Text(
                    "Already have an account?",
                    style: Edits.headLine4.copyWith(color: Colors.black),
                  ),
                  const Gap(5),
                  GestureDetector(
                    onTap:() => openSignInScreen(context),
                    child: Text(
                      "Sign-In",
                      style: Edits.headLine4.copyWith(color: Colors.pinkAccent),
                    ),
                  ),
                 ],
                ),
               ),
             ),
      ),
    );
  }
}
