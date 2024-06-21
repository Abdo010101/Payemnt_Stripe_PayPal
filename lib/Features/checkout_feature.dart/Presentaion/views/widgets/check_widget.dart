import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: -60,
      child: CircleAvatar(
        radius: 60,
        backgroundColor: Color(0xffD9D9D9),
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.green,
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 50.h,
          ),
        ),
      ),
    );
  }
}
