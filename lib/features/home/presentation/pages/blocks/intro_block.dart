import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:siteturbo/adapters/resolutions.dart';
import 'package:siteturbo/constans/image_constants.dart';
import 'package:siteturbo/theme/app_colors.dart';

class IntroBlock extends StatefulWidget {
  const IntroBlock({super.key});

  @override
  State<IntroBlock> createState() => _IntroBlockState();
}

class _IntroBlockState extends State<IntroBlock> {
  @override
  Widget build(BuildContext context) {
    CurrentResolution resolution = Resolutions.getResolution(context: context);
    return Container(
      height: 720,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstans.bgTerra,
          ),
          fit: BoxFit.fitHeight,
          opacity: 0.8
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 90,
            child: AnimatedTextKit(
              key: ValueKey<bool>(resolution == CurrentResolution.isWeb),
              repeatForever: false,
              totalRepeatCount: 1,
              animatedTexts: [
                TyperAnimatedText(
                  'Somos a agência de marketing\nque você estava procurando.',
                  speed: const Duration(milliseconds: 80),
                  textAlign: TextAlign.center,
                  textStyle: TextStyle(
                    fontFamily: 'Poppins',
                    height: resolution == CurrentResolution.isWeb ? 0.9 : 1,
                    fontSize: resolution == CurrentResolution.isWeb ? 42 : 21,
                    fontWeight: FontWeight.bold,
                    color: AppColors.turboWhite,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: resolution == CurrentResolution.isWeb ? 28 : 14,
                height: resolution == CurrentResolution.isWeb ? 1 : 1.5,
                fontWeight: FontWeight.normal,
                color: AppColors.turboWhite,
                fontFamily: 'Poppins',
              ),
              text: 'Qualidade e profissionalismo de uma ',
              children: const [
                TextSpan(
                  text: 'agência',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ',\nmas atendimento pessoal e otimizado de um ',
                ),
                TextSpan(
                  text: 'freelancer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: '.',
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
