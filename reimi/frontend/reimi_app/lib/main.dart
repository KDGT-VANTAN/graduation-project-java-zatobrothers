import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:reimi_app/data/datasources/firebase/firebase_options_dev.dart'
    as dev;
import 'package:reimi_app/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: dev.DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MyApp(),
  );
}
