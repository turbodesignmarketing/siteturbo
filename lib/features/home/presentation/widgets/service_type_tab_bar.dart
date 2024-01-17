import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/adapters/resolutions.dart';
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
    final resolution = Resolutions.getResolution(context: context);
    return SizedBox(
      height: 31,
      child: Observer(
        builder: (_) {
          if (resolution != CurrentResolution.isCellPhone) {
            return _buildWebVersion();
          } else {
            return _buildMobileVersion();
          }
        },
      ),
    );
  }

  Widget _buildWebVersion() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
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
          width: 10,
        );
      },
    );
  }

  Widget _buildMobileVersion() {
    return Row(
      children: [
        Expanded(
          child: CarouselSlider(
            items: controller.serviceOptions.map(
              (e) {
                return AnimatedCrossFade(
                  firstChild: _buildSelectedButton(title: e.name),
                  secondChild: _buildButton(title: e.name),
                  crossFadeState: e == controller.selectedServiceType
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(
                    milliseconds: 200,
                  ),
                );
              },
            ).toList(),
            options: CarouselOptions(
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              viewportFraction: 0.5,
              enlargeFactor: 0.5,
              onPageChanged: (index, reason) {
                setState(() {
                  controller
                      .setSelectedServiceType(controller.serviceOptions[index]);
                });
              },
            ),
          ),
        ),
      ],
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
    Color fontColor = AppColors.turboWhite;
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          fontColor = AppColors.turbogreen;
        });
      },
      onExit: (value) {
        setState(() {
          fontColor = AppColors.turboWhite;
        });
      },
      child: SizedBox(
        height: 31,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: RenderTextAdapter(
              text: title,
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: fontColor,
            ),
          ),
        ),
      ),
    );
  }
}
