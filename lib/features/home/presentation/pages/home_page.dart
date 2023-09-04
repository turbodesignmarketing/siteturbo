import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/constans/image_constants.dart';
import 'package:siteturbo/features/home/presentation/controller/home_controller.dart';
import 'package:siteturbo/features/home/presentation/utils/service_type.dart';
import 'package:siteturbo/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:siteturbo/features/home/presentation/widgets/service_type_description_widget.dart';
import 'package:siteturbo/features/home/presentation/widgets/service_type_menu_selection.dart';
import 'package:siteturbo/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final controller = Modular.get<HomeController>();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.turboBlack,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  ImageConstans.gato1,
                  width: 324,
                  height: 511,
                ),
                Column(
                  children: [
                    Transform.rotate(
                      angle: -0.15303,
                      child: SizedBox(
                        width: 541,
                        child: RenderTextAdapter(
                          text:
                              'Somos a agência de marketing que você estava procurando.',
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: AppColors.turbogreen,
                          lineWeight: 1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 65,
                    ),
                    SizedBox(
                      width: 434,
                      child: RenderTextAdapter(
                        text:
                            'Trabalhamos com a\nqualidade e profissionalismo\nde uma agência, mas com\no atendimento pessoal e\notimizado de um freelancer.',
                        fontSize: 26,
                        lineWeight: 1,
                        fontWeight: FontWeight.normal,
                        color: AppColors.turboWhite,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Transform.rotate(
                    angle: 0.069,
                    child: Container(
                      width: 300,
                      height: 600,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 1,
                          color: AppColors.turboWhite,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Observer(builder: (_) {
                  return ServiceTypeMenuSelection(
                    selectionPosition: controller.selectionPosition,
                    titleWidth: controller.selectionTitleWidth,
                    serviceTypeList: ServiceType.values,
                    descriptionList: [
                      ServiceTypeDescriptionWidget.buildSocialMedia(),
                      ServiceTypeDescriptionWidget.buildBranding(),
                      ServiceTypeDescriptionWidget.buildConsulting(),
                      ServiceTypeDescriptionWidget.buildWebsite(),
                      ServiceTypeDescriptionWidget.buildPrinted(),
                      ServiceTypeDescriptionWidget.buildContentCapture(),
                      ServiceTypeDescriptionWidget.buildEbook(),
                    ],
                    selectedIndex: controller.serviceTypeSelectedIndex,
                    onServiceTypeChanged: (int index, double titleWidth) {
                      controller.serviceTypeSelectedIndex = index;
                      controller.selectionTitleWidth = titleWidth;
                      controller.selectionPosition = 57.0 * index;
                    },
                  );
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
