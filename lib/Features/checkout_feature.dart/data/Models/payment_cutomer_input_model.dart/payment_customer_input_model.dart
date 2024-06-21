class PaymentCutomerInputModel {
  final String? name;

  PaymentCutomerInputModel({this.name});

  toJson() {
    return {'name': name};
  }
}
