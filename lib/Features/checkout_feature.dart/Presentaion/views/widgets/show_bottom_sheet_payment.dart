import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/manager/payment_cubit.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/thank_you_view.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/custom_button_bloc_consumer.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/payment_method_list_view.dart';
import 'package:payment/core/utils/widgets.dart/default_button.dart';

class CutomBottomSheetPaymentMetods extends StatelessWidget {
  const CutomBottomSheetPaymentMetods({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          PaymentMethosListView(),
          SizedBox(
            height: 10,
          ),
          BlocConsumerDefaultButton(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
