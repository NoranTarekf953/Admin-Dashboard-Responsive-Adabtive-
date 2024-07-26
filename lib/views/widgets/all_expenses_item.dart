import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/all_expenses_model.dart';
import '../../utils/app_styles.dart';

class AllExpensesItem extends StatelessWidget {
  AllExpensesItem(
      {super.key, required this.allExpensesModel, required this.isSelected});
  AllExpensesModel allExpensesModel;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpenses(allExpensesModel: allExpensesModel)
        : InActiveAllExpenses(allExpensesModel: allExpensesModel);
  }
}

class InActiveAllExpenses extends StatelessWidget {
  const InActiveAllExpenses({
    super.key,
    required this.allExpensesModel,
  });

  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFF1F1F1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xfffafafa),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(allExpensesModel.image),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color(0xff064061),
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          )
        ],
      ),
    );
  }
}

class ActiveAllExpenses extends StatelessWidget {
  const ActiveAllExpenses({
    super.key,
    required this.allExpensesModel,
  });

  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xff4eb7f2),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFF1F1F1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromRGBO(255, 255, 255, 0.1),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    allExpensesModel.image,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.title,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xfffafafa)),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
