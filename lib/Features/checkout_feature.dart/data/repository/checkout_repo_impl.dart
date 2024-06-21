import 'package:dartz/dartz.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_customer_model/payment_customer_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_cutomer_input_model.dart/payment_customer_input_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_intent_model/payment_intent_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/repository/checkout_repo.dart';
import 'package:payment/core/utils/service/stripe_service.dart';

import '../../../../core/error/failures.dart';

class CheckoutRepoImp extends CheckoutRepo {
  StripService stripService = StripService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerError(errorMsg: e.toString()));
    }
  }

  @override
  Future<Either<Failure, PaymentCustomerModel>> createPaymentCustomer(
      PaymentCutomerInputModel paymentCutomerInputModel) async {
    try {
      var res = await stripService.createPaymentCustomer(
          paymentCutomerInputModel: paymentCutomerInputModel);
      return right(res);
    } catch (e) {
      return left(ServerError(errorMsg: e.toString()));
    }
  }
}
