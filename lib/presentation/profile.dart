import 'package:first_app/utils/appstyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Edits.bgColor,
        body: Center(
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
                    Icon(Icons.flight_land_outlined),
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
                  child:  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                     hintText: 'Enter your e-mail',iconColor: Colors.black,fillColor: Colors.black,
                      hintStyle: Edits.textStyle2,
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
                  child:  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(8),
                      hintText: 'Enter your password',iconColor: Colors.black,fillColor: Colors.black,
                      hintStyle: Edits.textStyle2,
                    ),
                  ),
                ),
                const Gap(20),
                Row(
                  children: [
                    const Gap(20),
                    Text(
                      "Phone number",
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
                  child:  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      hintText: 'Enter your phone number',iconColor: Colors.black,fillColor: Colors.black,
                      hintStyle: Edits.textStyle2,
                    ),
                  ),
                ),
                const Gap(20),
                Row(
                  children: [
                    const Gap(50),
                    InkWell(
                      onTap: () {
                        print("you are tapped");
                      },
                      child: Text(
                        "Forgot password?  ",
                        style: Edits.headLine4.copyWith(color: Colors.black),
                      ),
                    ),
                    Text(
                      "|   ",
                      style: Edits.headLine4.copyWith(color: Colors.black),
                    ),
                    InkWell(
                      onTap: () {
                        print("You are Tapped");
                      },
                      child: Text(
                        "Sign-up",
                        style: Edits.headLine4.copyWith(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const Gap(15),
                Container(
                  width: 250,
                  height: 35,
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                  padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        const Gap(30),
                        ElevatedButton(
                          onPressed: () { print("I'm selected :)"); },
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                            elevation: MaterialStateProperty.all(0),padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
                          ),
                          child: Text(
                            "Enter with Facebook",
                            style: Edits.headLine4.copyWith(color: Colors.white),
                          ),
                        ),
                        const Gap(20),
                        const Icon(Icons.facebook),
                      ],
                    ),
                ), //facebook
                const Gap(10),
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
                        onPressed: () { print("I'm selected :)"); },
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                          elevation: MaterialStateProperty.all(0),padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
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
                ),//apple
                const Gap(10),
                Container(
                  width: 250,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade400,
                  ),
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      const Gap(40),
                      ElevatedButton(
                        onPressed: () { print("I'm selected :)"); },
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepPurple.shade400),
                        elevation: MaterialStateProperty.all(0),padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
                        ),
                        child: Text(
                          "Enter with Discord",
                          style: Edits.headLine4.copyWith(color: Colors.white),
                        ),
                      ),
                      const Gap(20),
                      const Icon(Icons.discord),
                    ],
                  ),
                ), //discord
              ],
            ),
          ),
        ));
  }
}
