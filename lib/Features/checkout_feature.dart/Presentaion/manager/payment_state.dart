part of 'payment_cubit.dart';

@immutable
abstract class PaymentState {}

class PaymentInitial extends PaymentState {}

class PaymentLoading extends PaymentState {}

class PaymentSucess extends PaymentState {}

class PaymentFailure extends PaymentState {
  final String error;
  PaymentFailure(this.error);
}

class PaymentCutomerSucess extends PaymentState {
  final PaymentCustomerModel paymentCustomerModel;
  PaymentCutomerSucess(this.paymentCustomerModel);
}

class PaymentCustomerFailure extends PaymentState {
  final String error;
  PaymentCustomerFailure(this.error);
}
