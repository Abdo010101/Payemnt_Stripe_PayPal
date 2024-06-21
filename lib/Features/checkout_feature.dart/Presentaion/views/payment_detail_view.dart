import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/thank_you_view.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/Payment_Detail_screen_body.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/custom_Credit_card.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/core/utils/widgets.dart/build_app_bar.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment/core/utils/widgets.dart/default_button.dart';

class PaymentDetailScreen extends StatefulWidget {
  PaymentDetailScreen({super.key});

  @override
  State<PaymentDetailScreen> createState() => _PaymentDetailScreenState();
}

class _PaymentDetailScreenState extends State<PaymentDetailScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(title: 'Payment Detail'),
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: PaymentDetailScreenBody(),
            ),
            SliverToBoxAdapter(
              child: CustomCreditCard(
                formKey: formKey,
                autovalidateMode: autovalidateMode,
              ),
            ),
            SliverFillRemaining(
                hasScrollBody: false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: DefaultButton(
                      title: 'Pay',
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                        } else {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ThankYouView();
                          }));
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                    ),
                  ),
                ))
          ],
        ));
  }
}
