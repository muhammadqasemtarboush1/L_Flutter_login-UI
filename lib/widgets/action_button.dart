import 'package:flutter/material.dart';
import 'package:login_ui/consts/colors.dart';
import 'package:login_ui/consts/sizes.dart';

class ActionButton extends StatelessWidget {
  final String actionName;
  const ActionButton({super.key, required this.actionName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            AppColor.gradient1,
            AppColor.gradient2,
            AppColor.gradient3
          ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          borderRadius: AppSize.textFormFieldBorderRadiuse),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(395, 55),
            backgroundColor: AppColor.transparentColor,
            shadowColor: AppColor.transparentColor),
        child: Text(actionName,
            style: const TextStyle(
                fontWeight: AppSize.actionBtnFontWeight,
                fontSize: AppSize.actionBtnFontSize)),
      ),
    );
  }
}
