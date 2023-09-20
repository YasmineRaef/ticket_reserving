import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/presentation/profile.dart';
import 'package:first_app/presentation/welcome_page.dart';
import 'package:flutter/material.dart';

import 'Home_screen.dart';
import 'bottom_bar.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if(snapshot.hasData){
            return const WelcomePage();
        }
          else {
            return const BottomBar();
          }
        }
        )
      ),
    );
  }
}
