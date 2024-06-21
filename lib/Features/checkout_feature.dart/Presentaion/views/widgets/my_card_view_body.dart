import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/manager/payment_cubit.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/payment_detail_view.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/check_out_info_item.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/payment_method_item.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/payment_method_list_view.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/show_bottom_sheet_payment.dart';
import 'package:payment/Features/checkout_feature.dart/data/repository/checkout_repo_impl.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/core/utils/widgets.dart/default_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        children: [
          const Expanded(
            child: Image(
              image: AssetImage('assets/images/Group 6.png'),
            ),
          ),
          const CheckOutInfoItem(title: 'Order Subtotla', price: r'25.5$'),
          SizedBox(
            height: 5.h,
          ),
          const CheckOutInfoItem(title: 'Discount', price: r'25.5$'),
          SizedBox(
            height: 5.h,
          ),
          const CheckOutInfoItem(title: 'Shipping', price: r'25.5$'),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(color: Colors.grey.withOpacity(0.4), thickness: 1),
          ),
          SizedBox(
            height: 8.h,
          ),
          CheckOutInfoItem(
            title: 'Total',
            price: r'50.5$',
            style: Styles.style24,
          ),
          SizedBox(
            height: 12.h,
          ),
          DefaultButton(
            title: 'Complete Payment',
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => PaymentCubit(CheckoutRepoImp()),
                      child: CutomBottomSheetPaymentMetods(),
                    );
                  });
            },
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
