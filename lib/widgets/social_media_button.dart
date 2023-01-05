import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/consts/colors.dart';
import 'package:login_ui/consts/sizes.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  final VoidCallback onPressed;
  const SocialButton(
      {super.key,
      required this.iconPath,
      required this.label,
      required this.onPressed,
      this.horizontalPadding = 80});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        iconPath,
        width: AppSize.socialMediaIconWidth,
        color: AppColor.whiteColor,
      ),
      label: Text(
        label,
        style: const TextStyle(
            color: AppColor.whiteColor,
            fontSize: AppSize.socialMedialableFontSize),
      ),
      style: TextButton.styleFrom(
          padding:
              EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 30),
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: AppColor.whiteColor,
                width: AppSize.socialMediaBtnBorderWidth,
              ),
              borderRadius: AppSize.socialMediaBtnBorderRadiuse)),
      // child: child
    );
  }
}
