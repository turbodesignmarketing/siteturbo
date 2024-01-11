import 'package:flutter/material.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/adapters/resolutions.dart';
import 'package:siteturbo/adapters/svg_adapter.dart';
import 'package:siteturbo/constans/icon_constants.dart';
import 'package:siteturbo/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final resolution = Resolutions.getResolution(context: context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 56, vertical: 56),
      child: Row(
        children: [
          const Flexible(
            child: Align(
              alignment: Alignment.centerLeft,
              child: SvgAdapter(
                path: IconConstans.turboLogo,
                color: AppColors.turboWhite,
                width: 144,
                height: 38,
              ),
            ),
          ),
          if (resolution == CurrentResolution.isWeb)
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppBarButton(
                    text: 'serviços',
                    onTap: () {},
                  ),
                  AppBarButton(
                    text: 'portfólio',
                    onTap: () {},
                  ),
                  AppBarButton(
                    text: 'sobre nós',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomLinkIcon(
                  path: IconConstans.instagramLogo,
                  onTap: () {
                    _launchUrl(
                      'https://www.instagram.com/_turbodesign/',
                    );
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                CustomLinkIcon(
                  path: IconConstans.facebookLogo,
                  onTap: () {
                    _launchUrl(
                      'https://www.facebook.com/profile.php?id=100086114784506',
                    );
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                CustomLinkIcon(
                  path: IconConstans.linkedinLogo,
                  onTap: () {
                    _launchUrl(
                      'https://linkedin.com/company/turbodesignemarketing',
                    );
                  },
                ),
                const SizedBox(
                  width: 12,
                ),
                if (resolution != CurrentResolution.isCellPhone) ...{
                  CustomIconButton(
                    onTap: () {
                      _launchUrl(
                        'https://api.whatsapp.com/send/?phone=5541999886074&text=Oi%2C+tudo+bem%3F+Gostaria+de+um+or%C3%A7amento%21&type=phone_number&app_absent=0',
                      );
                    },
                  ),
                } else ...{
                  CustomLinkIcon(
                    path: IconConstans.whatsappLogo,
                    onTap: () {
                      _launchUrl(
                        'https://api.whatsapp.com/send/?phone=5541999886074&text=Oi%2C+tudo+bem%3F+Gostaria+de+um+or%C3%A7amento%21&type=phone_number&app_absent=0',
                      );
                    },
                  ),
                }
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}

class AppBarButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  const AppBarButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  State<AppBarButton> createState() => _AppBarButtonState();
}

class _AppBarButtonState extends State<AppBarButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: widget.onTap,
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHovered = false;
            });
          },
          child: RenderTextAdapter(
            text: widget.text,
            color: isHovered ? AppColors.turbogreen : AppColors.turboWhite,
            fontSize: 20,
            fontWeight: isHovered ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

class CustomIconButton extends StatefulWidget {
  final Function() onTap;
  const CustomIconButton({
    super.key,
    required this.onTap,
  });

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovered = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isHovered ? AppColors.turbogreen : AppColors.turboWhite,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: Row(
            children: [
              SvgAdapter(
                path: IconConstans.whatsappLogo,
                width: 20,
                height: 20,
                color: isHovered ? AppColors.turbogreen : AppColors.turboWhite,
              ),
              const SizedBox(
                width: 9,
              ),
              RenderTextAdapter(
                text: 'vamos conversar',
                color: isHovered ? AppColors.turbogreen : AppColors.turboWhite,
                fontSize: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLinkIcon extends StatefulWidget {
  final String path;
  final Function() onTap;

  const CustomLinkIcon({
    super.key,
    required this.path,
    required this.onTap,
  });

  @override
  State<CustomLinkIcon> createState() => _CustomLinkIconState();
}

class _CustomLinkIconState extends State<CustomLinkIcon> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovered = false;
          });
        },
        child: SvgAdapter(
          path: widget.path,
          width: 20,
          height: 20,
          color: isHovered ? AppColors.turbogreen : AppColors.turboWhite,
        ),
      ),
    );
  }
}

Future<void> _launchUrl(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    throw Exception('Could not launch $uri');
  }
}

//TO DO: FAZER CERTO
