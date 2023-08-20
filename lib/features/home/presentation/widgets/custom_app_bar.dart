import 'package:flutter/material.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/adapters/svg_adapter.dart';
import 'package:siteturbo/constans/icon_constants.dart';
import 'package:siteturbo/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 56, vertical: 56),
      child: Row(
        children: [
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgAdapter(
                  path: IconConstans.turboLogo,
                  color: AppColors.turboWhite,
                  width: 144,
                  height: 38,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBarButton(
                  text: 'serviços',
                  onTap: () {},
                ),
                AppBarButton(
                  text: 'estou perdido',
                  onTap: () {},
                ),
                AppBarButton(
                  text: 'métricas',
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
                    _launchUrl('https://www.instagram.com/_turbodesign/');
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                CustomLinkIcon(
                  path: IconConstans.facebookLogo,
                  onTap: () {
                    _launchUrl(
                        'https://www.facebook.com/profile.php?id=100086114784506');
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                CustomLinkIcon(
                  path: IconConstans.linkedinLogo,
                  onTap: () {
                    _launchUrl(
                        'https://linkedin.com/company/turbodesignemarketing');
                  },
                ),
                const SizedBox(
                  width: 12,
                ),
                CustomIconButton(
                  onTap: () {
                    _launchUrl(
                        'https://api.whatsapp.com/send/?phone=5541999886074&text=Oi%2C+tudo+bem%3F+Gostaria+de+um+or%C3%A7amento%21&type=phone_number&app_absent=0');
                  },
                )
              ],
            ),
          )
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
            color: isHovered ? AppColors.turboBlack : AppColors.turbogreen,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColors.turbogreen,
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
                color: isHovered ? AppColors.turbogreen : AppColors.turboBlack,
              ),
              const SizedBox(
                width: 9,
              ),
              RenderTextAdapter(
                text: 'vamos conversar',
                color: isHovered ? AppColors.turbogreen : AppColors.turboBlack,
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

  const CustomLinkIcon({super.key, required this.path, required this.onTap});

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
