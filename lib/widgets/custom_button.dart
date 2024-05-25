import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backGroundColor, this.textColor});

  final Color? backGroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backGroundColor ?? const Color(0xff4db7f2),
        ),
        onPressed: () {},
        child: Text(
          'Send Money',
          style: AppStyle.styleSemiBold18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
