import 'package:flutter/material.dart';
import 'package:user_dashboard/models/all_expenses_model.dart';
import 'package:user_dashboard/utils/app_images.dart';
import 'package:user_dashboard/views/widgets/all_expenses_header.dart';
import 'package:user_dashboard/views/widgets/all_expenses_item.dart';

class AllExpenses extends StatefulWidget {
  AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  final List<AllExpensesModel> items = [
    AllExpensesModel(
        image: Assets.imagesBalance,
        date: 'April 2022',
        title: 'Balance',
        price: r'$20.129'),
    AllExpensesModel(
        image: Assets.imagesIncome,
        date: 'April 2022',
        title: 'Income',
        price: r'$20.129'),
    AllExpensesModel(
        image: Assets.imagesExpenses,
        date: 'April 2022',
        title: 'Expenses',
        price: r'$20.129'),
  ];

  late int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const AllExpensesHeader(),
          const SizedBox(
            height: 10,
          ),
          Row(children: [
            Expanded(
                child: GestureDetector(
              onTap: () {
                updateIndex(0);
              },
              child: AllExpensesItem(
                  isSelected: selectedIndex == 0, allExpensesModel: items[0]),
            )),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                child: GestureDetector(
              onTap: () {
                updateIndex(1);
              },
              child: AllExpensesItem(
                  isSelected: selectedIndex == 1, allExpensesModel: items[1]),
            )),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                child: GestureDetector(
              onTap: () {
                updateIndex(2);
              },
              child: AllExpensesItem(
                  isSelected: selectedIndex == 2, allExpensesModel: items[2]),
            )),
          ])
        ],
      ),
    );
  }

  void updateIndex(int index) {
    return setState(() {
      selectedIndex = index;
    });
  }
}
