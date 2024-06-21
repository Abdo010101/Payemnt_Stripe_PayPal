import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem(
      {super.key, required this.imagePath, this.isActive = false});

  final String imagePath;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 90.w,
      height: 60.h,
      decoration: ShapeDecoration(
          shadows: isActive
              ? [
                  const BoxShadow(
                    color: Color(0xff34A853),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                  )
                ]
              : null,
          color: const Color(0xff34A853),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                  width: 1,
                  color: isActive ? const Color(0xff34A853) : Colors.grey))),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Center(
          child: SvgPicture.asset(
            height: 25.h,
            //! scaleDown means that the image not can be big ovr than the real size
            fit: BoxFit.scaleDown,
            imagePath,
          ),
        ),
      ),
    );
  }
}
