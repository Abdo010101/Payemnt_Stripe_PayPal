import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/manager/payment_cubit.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/thank_you_view.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment/core/utils/widgets.dart/default_button.dart';

class BlocConsumerDefaultButton extends StatelessWidget {
  const BlocConsumerDefaultButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSucess) {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return const ThankYouView();
          }));
        }
        if (state is PaymentFailure) {
          Navigator.pop(context);
          SnackBar snackBar = SnackBar(content: Text(state.error));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return DefaultButton(
            isLoading: state is PaymentLoading ? true : false,
            title: 'Continuie',
            onTap: () {
              //! NOTe this data comes form the screen of the product that user we want to buy it
              PaymentIntentInputModel paymentIntentInputModel =
                  PaymentIntentInputModel(
                      amount: 75,
                      currency: 'usd',
                      customerId: 'cus_QHOCwQbQ0El8KP');

              BlocProvider.of<PaymentCubit>(context).makePayment(
                  paymentIntentInputModel: paymentIntentInputModel);
            });
      },
    );
  }
}
