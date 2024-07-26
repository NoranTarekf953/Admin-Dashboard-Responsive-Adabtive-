import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:user_dashboard/utils/app_styles.dart';
import 'package:user_dashboard/views/my_card_and_income_section.dart';
import 'package:user_dashboard/views/widgets/all_expenses.dart';
import 'package:user_dashboard/views/widgets/quick_invoice.dart';

import 'income_section.dart';
import 'widgets/background_container.dart';
import 'widgets/custom_drawer.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: Row(
        children: [
          const Expanded(child: CustomDrawer()),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  BackgroundContainer(
                    child: AllExpenses(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const BackgroundContainer(child: QuickInvoice())
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    BackgroundContainer(child: MyCardAndTransactionSection()),
                    SizedBox(
                      height: 10,
                    ),
                    BackgroundContainer(child: IncomeSection()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
