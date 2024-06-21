class PaymentIntentInputModel {
  int amount;
  String currency;
  String? customerId;
  PaymentIntentInputModel(
      {this.customerId, required this.amount, required this.currency});

  // amount

  Map<String, dynamic> toJson() {
    amount = amount * 100;
    return {'amount': amount, 'currency': currency, 'customer': customerId};
  }
}
