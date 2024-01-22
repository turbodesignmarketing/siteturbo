import 'package:flutter/material.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/adapters/svg_adapter.dart';
import 'package:siteturbo/constans/icon_constants.dart';
import 'package:siteturbo/constans/image_constants.dart';
import 'package:siteturbo/theme/app_colors.dart';

class ContactBlock extends StatelessWidget {
  const ContactBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          image: AssetImage(
            ImageConstans.bgLua,
          ),
          fit: BoxFit.none,
        ),
      ),
      height: 650,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                  height: 1,
                  color: AppColors.turboWhite,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
                text: 'Vamos tomar um café e falar\nsobre os ',
                children: [
                  TextSpan(
                    text: 'seus objetivos e\ncomo podemos te ajudar\n',
                    style: TextStyle(
                      color: AppColors.turbogreen,
                    ),
                  ),
                  TextSpan(
                    text: ' a alcançá-los.',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgAdapter(
                  path: IconConstans.linkedinLogo,
                  width: 47,
                  height: 47,
                  color: AppColors.turboWhite,
                ),
                SizedBox(
                  width: 35,
                ),
                SvgAdapter(
                  path: IconConstans.facebookLogo,
                  width: 47,
                  height: 47,
                  color: AppColors.turboWhite,
                ),
                SizedBox(
                  width: 35,
                ),
                SvgAdapter(
                  path: IconConstans.instagramLogo,
                  width: 47,
                  height: 47,
                  color: AppColors.turboWhite,
                ),
                SizedBox(
                  width: 35,
                ),
                SvgAdapter(
                  path: IconConstans.whatsappLogo,
                  width: 47,
                  height: 47,
                  color: AppColors.turboWhite,
                ),
              ],
            ),
            const SizedBox(
              height: 170,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Align(
                alignment: Alignment.centerRight,
                child: Transform.rotate(
                  angle: -0.2,
                  child: SizedBox(
                    width: 211,
                    child: RenderTextAdapter(
                      text: 'da terra a lua, te levamos longe!',
                      fontFamily: 'Rock Salt',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: AppColors.turboWhite,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}

//  a alcançá-los.