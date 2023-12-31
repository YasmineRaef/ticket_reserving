import 'package:firebase_core/firebase_core.dart';
import 'package:first_app/utils/appstyles.dart';
import 'package:flutter/material.dart';
import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

