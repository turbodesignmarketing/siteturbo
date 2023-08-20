import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:siteturbo/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyDHvLXflCH4eJl29_FXz_4h0Sy_xJkXBtQ',
    appId: '1:204459627715:web:d667447649b159be957e76',
    messagingSenderId: '204459627715',
    projectId: 'siteturbo-7d4a6',
  ));
  runApp(
    const RobotDetector(
      debug: false,
      child: AppWidget(),
    ),
  );
}
