import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/utils/styles.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.isLoading = false});
  final String title;
  bool isLoading = false;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff34A853),
        ),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : Text(
                  title,
                  style: Styles.style22,
                ),
        ),
      ),
    );
  }
}
