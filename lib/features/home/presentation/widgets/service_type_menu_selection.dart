// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/features/home/presentation/utils/service_type.dart';

import 'package:siteturbo/theme/app_colors.dart';

// ignore: must_be_immutable
class ServiceTypeMenuSelection extends StatefulWidget {
  final int selectedIndex;
  final List<ServiceType> serviceTypeList;
  final List<Widget> descriptionList;
  final double selectionPosition;
  final double titleWidth;
  final Function(int index, double titleWidth) onServiceTypeChanged;
  const ServiceTypeMenuSelection({
    Key? key,
    required this.serviceTypeList,
    required this.descriptionList,
    required this.selectedIndex,
    required this.selectionPosition,
    required this.onServiceTypeChanged,
    required this.titleWidth,
  }) : super(key: key);

  @override
  State<ServiceTypeMenuSelection> createState() =>
      _ServiceTypeMenuSelectionState();
}

class _ServiceTypeMenuSelectionState extends State<ServiceTypeMenuSelection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              AnimatedContainer(
                margin: EdgeInsets.only(top: widget.selectionPosition),
                duration: const Duration(milliseconds: 200),
                width: widget.titleWidth,
                height: 38,
                decoration: BoxDecoration(
                  color: AppColors.turbogreen,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: widget.serviceTypeList.map(
                  (service) {
                    int index = widget.serviceTypeList.indexOf(service);
                    return GestureDetector(
                      onTap: () {
                        widget.onServiceTypeChanged(index, service.titleWidth);
                      },
                      child: SizedBox(
                        height: 38,
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: AnimatedDefaultTextStyle(
                              duration: const Duration(milliseconds: 200),
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.normal,
                                color: index == widget.selectedIndex
                                    ? AppColors.turboBlack
                                    : AppColors.turboWhite,
                              ),
                              child: Text(
                                service.name,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ],
          ),
          const SizedBox(
            width: 43,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: 399,
                  decoration: BoxDecoration(
                    color: AppColors.turbogreen,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: widget.descriptionList[widget.selectedIndex],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 399,
                height: 66,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                    color: AppColors.turbogreen,
                  ),
                ),
                child: Center(
                  child: RenderTextAdapter(
                    text: 'QUERO UM ORÇAMENTO',
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                    color: AppColors.turbogreen,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 60,
          ),
          Transform.rotate(
            angle: -0.099,
            child: SizedBox(
              width: 140,
              child: RenderTextAdapter(
                text: widget.serviceTypeList[widget.selectedIndex].commentary,
                fontSize: 16,
                fontFamily: 'Rock Salt',
                lineWeight: 1,
                fontWeight: FontWeight.normal,
                color: AppColors.turbogreen,
              ),
            ),
          )
        ],
      ),
    );
  }
}
