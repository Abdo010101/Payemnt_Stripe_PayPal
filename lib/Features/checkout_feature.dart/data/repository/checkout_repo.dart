import 'package:dartz/dartz.dart';
import 'package:payment/Features/checkout_feature.dart/Data/repository/checkout_repo.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_customer_model/payment_customer_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_cutomer_input_model.dart/payment_customer_input_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_intent_model/payment_intent_model.dart';

import '../../../../core/error/failures.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});

  Future<Either<Failure, PaymentCustomerModel>> createPaymentCustomer(
      PaymentCutomerInputModel paymentCutomerInputModel);
}
