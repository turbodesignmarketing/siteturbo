import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:siteturbo/features/home/presentation/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Turbo Design',
      navigatorObservers: [
        seoRouteObserver,
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
