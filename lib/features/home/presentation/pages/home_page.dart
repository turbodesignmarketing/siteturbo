import 'package:flutter/material.dart';
import 'package:siteturbo/adapters/resolutions.dart';
import 'package:siteturbo/features/home/presentation/pages/blocks/consulting_block.dart';
import 'package:siteturbo/features/home/presentation/pages/blocks/contact_block.dart';
import 'package:siteturbo/features/home/presentation/pages/blocks/intro_block.dart';
import 'package:siteturbo/features/home/presentation/pages/blocks/metrics_block.dart';
import 'package:siteturbo/features/home/presentation/pages/blocks/service_type_block.dart';
import 'package:siteturbo/features/home/presentation/pages/blocks/team_block.dart';
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
    CurrentResolution resolution = Resolutions.getResolution(context: context);

    return Scaffold(
      backgroundColor: AppColors.turboBlack,
      extendBodyBehindAppBar: true,
      body: resolution == CurrentResolution.isWeb
          ? SingleChildScrollView(
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
                  ConsultingBlock(),
                  const MetricsBlock(),
                  const TeamBlock(),
                  const ContactBlock(),
                ],
              ),
            )
          : const Center(
              child: Text(
                'Ainda não estou pronto :(',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
    );
  }
}
