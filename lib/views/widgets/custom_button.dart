import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.label,
      required this.textcolor});
  Color backgroundColor;
  String label;
  Color textcolor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor, elevation: 0),
          onPressed: () {},
          child: Text(
            label,
            style:
                AppStyles.styleSemiBold16(context).copyWith(color: textcolor),
          )),
    );
  }
}
