class InitPaymentSheetInputModel {
  final String paymentIntentClientSecret;
  final String customerEphemeralKeySecret;
  final String cutomerId;

  InitPaymentSheetInputModel(
      {required this.paymentIntentClientSecret,
      required this.customerEphemeralKeySecret,
      required this.cutomerId});
}
