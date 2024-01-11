import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/features/home/presentation/controller/home_controller.dart';
import 'package:siteturbo/theme/app_colors.dart';

class ServiceTypeTabBar extends StatefulWidget {
  const ServiceTypeTabBar({super.key});

  @override
  State<ServiceTypeTabBar> createState() => _ServiceTypeTabBarState();
}

class _ServiceTypeTabBarState extends State<ServiceTypeTabBar> {
  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return SizedBox(
          height: 31,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final service = controller.serviceOptions[index];
              return InkWell(
                onTap: () {
                  setState(() {
                    controller.setSelectedServiceType(service);
                  });
                },
                child: AnimatedCrossFade(
                  firstChild: _buildSelectedButton(title: service.name),
                  secondChild: _buildButton(title: service.name),
                  crossFadeState: service == controller.selectedServiceType
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(
                    milliseconds: 200,
                  ),
                ),
              );
            },
            itemCount: controller.serviceOptions.length,
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 20,
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildSelectedButton({required String title}) {
    return Container(
      height: 31,
      decoration: BoxDecoration(
        color: AppColors.turbogreen,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: RenderTextAdapter(
            text: title,
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.turboBlack,
          ),
        ),
      ),
    );
  }

  Widget _buildButton({required String title}) {
    return SizedBox(
      height: 31,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: RenderTextAdapter(
            text: title,
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.turboWhite,
          ),
        ),
      ),
    );
  }
}
