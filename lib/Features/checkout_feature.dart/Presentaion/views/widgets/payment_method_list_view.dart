import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/payment_method_item.dart';
import 'package:payment/core/models/payment_methods_model.dart';

class PaymentMethosListView extends StatefulWidget {
  const PaymentMethosListView({super.key});

  @override
  State<PaymentMethosListView> createState() => _PaymentMethosListViewState();
}

class _PaymentMethosListViewState extends State<PaymentMethosListView> {
  List<PaymentMethodsModel> paymentMethodList = [
    PaymentMethodsModel('assets/images/payment1.svg'),
    PaymentMethodsModel('assets/images/paypal.svg')
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        // the height of listview is the smae of item childern
        height: 65.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: paymentMethodList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: PaymentMethodItem(
                    imagePath: paymentMethodList[index].image,
                    isActive: currentIndex == index,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
