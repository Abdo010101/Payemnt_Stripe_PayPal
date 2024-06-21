import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/ephmeral_key/ephmeral_key.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/init_payment_sheet_input_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_customer_model/payment_customer_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_cutomer_input_model.dart/payment_customer_input_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_intent_model/payment_intent_model.dart';
import 'package:payment/core/utils/service/api_keys.dart';
import 'package:payment/core/utils/service/dio_service.dart';

class StripService {
  //  1- PaymentIntentModel create payment intent(payment , currency, customerID)  // customerID comes form the beginging of the app we saved it when user register or create account
  //2- keySecret  creat ephemralKey( customerID) this happen at each every single create payment ف كل مرة بيعمل عمليه دفع
  // 2- init payment sheet(merchantDisplayName , intentCleintSecret, ephemralKeySecret)
  // 3- present payemnt sheet

  final DioHeloper dio = DioHeloper();

  //1-  this function take amount and concurreny params and return response as PaymentIntentModel
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await dio.post(
        body: paymentIntentInputModel.toJson(),
        contentType: Headers.formUrlEncodedContentType,
        token: ApiKeys.secretToken,
        url: 'https://api.stripe.com/v1/payment_intents');

    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    print(paymentIntentModel.amount);
    print(paymentIntentModel.clientSecret);
    print(paymentIntentModel.currency);

    return paymentIntentModel;
  }

  // 2-  create ephmeralKey (customerId)
  Future<EphmeralKeyModel> createEphemeralKey(
      {required String cutomerId}) async {
    var res = await dio.post(
        body: {'customer': cutomerId},
        contentType: Headers.formUrlEncodedContentType,
        token: ApiKeys.secretToken,
        headers: {
          'Authorization': "Bearer ${ApiKeys.secretToken}",
          'Stripe-Version': '2024-04-10'
        },
        url: 'https://api.stripe.com/v1/ephemeral_keys');

    EphmeralKeyModel ephmeralKeyModel = EphmeralKeyModel.fromjson(res.data);
    log('${ephmeralKeyModel.secret}');
    return ephmeralKeyModel;
  }

  //  2- the second step we create init payment
  Future initPayment(
      {required InitPaymentSheetInputModel initPaymentSheetInputModel}) async {
    //! setupPaymentSheetParamter takes two params mainly
    //1 merchantDisplayName: 'Flutter Stripe Store Demo',
    //2  paymentIntentClientSecret: data['paymentIntent'],
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret:
                initPaymentSheetInputModel.paymentIntentClientSecret,
            customerEphemeralKeySecret:
                initPaymentSheetInputModel.customerEphemeralKeySecret,
            customerId: initPaymentSheetInputModel.cutomerId,
            merchantDisplayName: 'AbdoAbdelahdy'));
  }

  //3- this mehtod to display payemnt sheet
  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  //4 to create the payment you need to pass for the 3 functins

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var ephemeralKeyModel = await createEphemeralKey(
        cutomerId: paymentIntentInputModel.customerId!);

    InitPaymentSheetInputModel initPaymentSheetInputModel =
        InitPaymentSheetInputModel(
            paymentIntentClientSecret: paymentIntentModel.clientSecret!,
            customerEphemeralKeySecret: ephemeralKeyModel.secret!,
            cutomerId: paymentIntentInputModel.customerId!);
    await initPayment(initPaymentSheetInputModel: initPaymentSheetInputModel);
    await displayPaymentSheet();
  }

  //! note this function we need to call it wehn user create account in my app to user response id to have customerDI

  Future<PaymentCustomerModel> createPaymentCustomer(
      {required PaymentCutomerInputModel paymentCutomerInputModel}) async {
    var response = await dio.post(
        body: paymentCutomerInputModel.toJson(),
        token: ApiKeys.secretToken,
        contentType: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/customers');

    PaymentCustomerModel paymentCustomerModel =
        PaymentCustomerModel.fromJson(response.data);

    print(paymentCustomerModel.id);
    return paymentCustomerModel;
  }
}
