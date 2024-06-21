import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_customer_model/payment_customer_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_cutomer_input_model.dart/payment_customer_input_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/Models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment/Features/checkout_feature.dart/data/repository/checkout_repo.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());
  final CheckoutRepo checkoutRepo;

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoading());
    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);
    data.fold((l) {
      log('hello');
      print(l.errorMsg.toString());
      emit(PaymentFailure(l.errorMsg.toString()));
    }, (r) {
      emit(PaymentSucess());
    });
  }

  Future createPaymentCutomer(
      PaymentCutomerInputModel paymentCutomerInputModel) async {
    var data =
        await checkoutRepo.createPaymentCustomer(paymentCutomerInputModel);
    data.fold((l) {
      log(l.errorMsg.toString());
      emit(PaymentCustomerFailure(l.errorMsg.toString()));
    }, (r) {
      log('${r.id}');
      emit(PaymentCutomerSucess(r));
    });
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());

    super.onChange(change);
  }
}
