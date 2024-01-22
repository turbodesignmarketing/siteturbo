import 'package:flutter/material.dart';
import 'package:siteturbo/theme/app_colors.dart';

class OverviewWidget extends StatelessWidget {
  final double reachedAccountsGrow;
  final double reachedAccountsNumberInMillions;
  final double engagingAccountsNumberInThousands;
  final double engagingAccountsGrow;
  final int totalFollowers;

  const OverviewWidget({
    super.key,
    this.reachedAccountsGrow = 3.796,
    this.reachedAccountsNumberInMillions = 2.1,
    this.engagingAccountsNumberInThousands = 123,
    this.engagingAccountsGrow = 5.887,
    this.totalFollowers = 4086,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColors.turbogreen,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Center(
              child: Text(
                'Visão geral',
                style: TextStyle(
                  color: AppColors.turboWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SF Pro',
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: AppColors.turboWhite.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'SF Pro',
                  ),
                  text: 'Você alcançou ',
                  children: [
                    TextSpan(
                      text: '+$reachedAccountsGrow%',
                      style: const TextStyle(
                        color: AppColors.turbogreen,
                      ),
                    ),
                    const TextSpan(
                      text: ' mais contas em\ncomparação com o mês anterior',
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Contas alcançadas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.turboWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'SF Pro',
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$reachedAccountsNumberInMillions milhões',
                      style: const TextStyle(
                        color: AppColors.turboWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'SF Pro',
                      ),
                    ),
                    Text(
                      '+$reachedAccountsGrow%',
                      style: const TextStyle(
                        color: AppColors.turbogreen,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'SF Pro',
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Contas com engajamento',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.turboWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'SF Pro',
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$engagingAccountsNumberInThousands mil',
                      style: const TextStyle(
                        color: AppColors.turboWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'SF Pro',
                      ),
                    ),
                    Text(
                      '+$engagingAccountsGrow%',
                      style: const TextStyle(
                        color: AppColors.turbogreen,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'SF Pro',
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total de seguidores',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.turboWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'SF Pro',
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$totalFollowers',
                      style: const TextStyle(
                        color: AppColors.turboWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'SF Pro',
                      ),
                    ),
                    const Text(
                      '--',
                      style: TextStyle(
                        color: AppColors.turboWhite,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'SF Pro',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
