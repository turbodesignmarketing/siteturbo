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
    bool isPhone = resolution == CurrentResolution.isCellPhone;
    return Container(
      height: 720,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              ImageConstans.bgTerra,
            ),
            fit: BoxFit.fitHeight,
            opacity: 0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 90,
            child: AnimatedTextKit(
              key: ValueKey<bool>(isPhone),
              repeatForever: false,
              totalRepeatCount: 1,
              animatedTexts: [
                TyperAnimatedText(
                  isPhone? 'Somos a agência\nde marketing\nque você estava\nprocurando.' : 'Somos a agência de marketing\nque você estava procurando.',
                  speed: const Duration(milliseconds: 80),
                  textAlign: TextAlign.center,
                  textStyle: TextStyle(
                    fontFamily: 'Poppins',
                    height: isPhone ? 1 : 0.9,
                    fontSize: isPhone ? 21 : 42,
                    fontWeight: FontWeight.bold,
                    color: AppColors.turboWhite,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: isPhone ? 16 : 28,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: isPhone ? 16 : 28,
                height: isPhone ? 1.5 : 1,
                fontWeight: FontWeight.normal,
                color: AppColors.turboWhite,
                fontFamily: 'Poppins',
              ),
              text: isPhone? 'Qualidade e profissionalismo\nde uma ' : 'Qualidade e profissionalismo de uma ',
              children: [
                const TextSpan(
                  text: 'agência',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: isPhone? ',\natendimento pessoal e\notimizado de um ' : ',\natendimento pessoal e otimizado de um ',
                ),
                const TextSpan(
                  text: 'freelancer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
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
