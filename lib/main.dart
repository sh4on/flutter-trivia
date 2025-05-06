import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_trivia/firebase_api.dart';
import 'package:flutter_trivia/flutter_trivia_app.dart';

 Future<void> main() async {

   // Ensures that widget binding is initialized before running the app
   WidgetsFlutterBinding.ensureInitialized();

   // Initializes Firebase services
   await Firebase.initializeApp();

   // Initializes Firebase Cloud Messaging for push notifications
   FirebaseApi().initNotification();

   // test

  runApp(const FlutterTriviaApp());
}

