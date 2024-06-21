import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/payment_method_item.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/payment_method_list_view.dart';
import 'package:payment/core/models/payment_methods_model.dart';

class PaymentDetailScreenBody extends StatelessWidget {
  const PaymentDetailScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 10.h,
        ),
        const PaymentMethosListView(),
      ],
    );
  }
}
