import 'package:flutter/material.dart';
import 'package:login_ui/consts/colors.dart';
import 'package:login_ui/consts/sizes.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          const BoxConstraints(maxWidth: AppSize.textFormFieldBoxConstMaxWidth),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: AppSize.textFormFieldContentPadding,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: AppColor.borderColor,
                    width: AppSize.textFormFieldBorderWidth),
                borderRadius: AppSize.textFormFieldBorderRadiuse),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: AppColor.gradient2,
                    width: AppSize.textFormFieldBorderWidth),
                borderRadius: AppSize.textFormFieldBorderRadiuse),
            hintText: hintText),
      ),
    );
  }
}
