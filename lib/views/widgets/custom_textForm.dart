import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class CustomTextForm extends StatelessWidget {
  CustomTextForm({super.key, required this.label, required this.hintText});
  String label;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            label,
            style: AppStyles.styleMedium16(context),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            fillColor: const Color(0xFFFAFAFA),
            focusColor: const Color(0xFFFAFAFA),
            filled: true,
            hintText: hintText,
            hintStyle: AppStyles.regular16(context)
                .copyWith(color: const Color(0xFFAAAAAA)),
            focusedBorder: customBorder(),
            enabledBorder: customBorder(),
          ),
        )
      ],
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Color.fromRGBO(250, 250, 250, 1)));
  }
}
