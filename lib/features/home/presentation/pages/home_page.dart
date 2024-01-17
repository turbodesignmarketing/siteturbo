import 'package:flutter/material.dart';
import 'package:siteturbo/features/home/presentation/pages/blocks/intro_block.dart';
import 'package:siteturbo/features/home/presentation/pages/blocks/service_type_block.dart';
import 'package:siteturbo/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:siteturbo/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.turboBlack,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Stack(
              children: [
                IntroBlock(),
                CustomAppBar(),
              ],
            ),
            Transform.translate(
              offset: const Offset(0, -120),
              child: ServiceTypeBlock(),
            ),
          ],
        ),
      ),
    );
  }
}
