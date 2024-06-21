import 'invoice_settings.dart';
import 'metadata.dart';

class PaymentCustomerModel {
  String? id;
  String? object;
  dynamic address;
  num? balance;
  num? created;
  dynamic currency;
  dynamic defaultSource;
  bool? delinquent;
  dynamic description;
  dynamic discount;
  dynamic email;
  String? invoicePrefix;
  InvoiceSettings? invoiceSettings;
  bool? livemode;
  Metadata? metadata;
  String? name;
  num? nextInvoiceSequence;
  dynamic phone;
  List<dynamic>? preferredLocales;
  dynamic shipping;
  String? taxExempt;
  dynamic testClock;

  PaymentCustomerModel({
    this.id,
    this.object,
    this.address,
    this.balance,
    this.created,
    this.currency,
    this.defaultSource,
    this.delinquent,
    this.description,
    this.discount,
    this.email,
    this.invoicePrefix,
    this.invoiceSettings,
    this.livemode,
    this.metadata,
    this.name,
    this.nextInvoiceSequence,
    this.phone,
    this.preferredLocales,
    this.shipping,
    this.taxExempt,
    this.testClock,
  });

  factory PaymentCustomerModel.fromJson(Map<String, dynamic> json) {
    return PaymentCustomerModel(
      id: json['id']?.toString(),
      object: json['object']?.toString(),
      address: json['address'],
      balance: num.tryParse(json['balance'].toString()),
      created: num.tryParse(json['created'].toString()),
      currency: json['currency'],
      defaultSource: json['default_source'],
      delinquent: json['delinquent']?.toString().contains("true"),
      description: json['description'],
      discount: json['discount'],
      email: json['email'],
      invoicePrefix: json['invoice_prefix']?.toString(),
      invoiceSettings: json['invoice_settings'] == null
          ? null
          : InvoiceSettings
              .fromIdCusQhoCwQbQ0El8KpObjectCustomerAddressNullBalance0Created1718191996CurrencyNullDefaultSourceNullDelinquentFalseDescriptionNullDiscountNullEmailNullInvoicePrefix16De5047InvoiceSettingsCustomFieldsNullDefaultPaymentMethodNullFooterNullRenderingOptionsNullLivemodeFalseMetadataNameAbdoClientNextInvoiceSequence1PhoneNullPreferredLocalesShippingNullTaxExemptNoneTestClockNull(
                  Map<String, dynamic>.from(json['invoice_settings'])),
      livemode: json['livemode']?.toString().contains("true"),
      metadata: json['metadata'] == null
          ? null
          : Metadata
              .fromIdCusQhoCwQbQ0El8KpObjectCustomerAddressNullBalance0Created1718191996CurrencyNullDefaultSourceNullDelinquentFalseDescriptionNullDiscountNullEmailNullInvoicePrefix16De5047InvoiceSettingsCustomFieldsNullDefaultPaymentMethodNullFooterNullRenderingOptionsNullLivemodeFalseMetadataNameAbdoClientNextInvoiceSequence1PhoneNullPreferredLocalesShippingNullTaxExemptNoneTestClockNull(
                  Map<String, dynamic>.from(json['metadata'])),
      name: json['name']?.toString(),
      nextInvoiceSequence:
          num.tryParse(json['next_invoice_sequence'].toString()),
      phone: json['phone'],
      preferredLocales: List<dynamic>.from(json['preferred_locales'] ?? []),
      shipping: json['shipping'],
      taxExempt: json['tax_exempt']?.toString(),
      testClock: json['test_clock'],
    );
  }

  Map<String, dynamic>
      toIdCusQhoCwQbQ0El8KpObjectCustomerAddressNullBalance0Created1718191996CurrencyNullDefaultSourceNullDelinquentFalseDescriptionNullDiscountNullEmailNullInvoicePrefix16De5047InvoiceSettingsCustomFieldsNullDefaultPaymentMethodNullFooterNullRenderingOptionsNullLivemodeFalseMetadataNameAbdoClientNextInvoiceSequence1PhoneNullPreferredLocalesShippingNullTaxExemptNoneTestClockNull() {
    return {
      if (id != null) 'id': id,
      if (object != null) 'object': object,
      if (address != null) 'address': address,
      if (balance != null) 'balance': balance,
      if (created != null) 'created': created,
      if (currency != null) 'currency': currency,
      if (defaultSource != null) 'default_source': defaultSource,
      if (delinquent != null) 'delinquent': delinquent,
      if (description != null) 'description': description,
      if (discount != null) 'discount': discount,
      if (email != null) 'email': email,
      if (invoicePrefix != null) 'invoice_prefix': invoicePrefix,
      if (invoiceSettings != null)
        'invoice_settings': invoiceSettings
            ?.toIdCusQhoCwQbQ0El8KpObjectCustomerAddressNullBalance0Created1718191996CurrencyNullDefaultSourceNullDelinquentFalseDescriptionNullDiscountNullEmailNullInvoicePrefix16De5047InvoiceSettingsCustomFieldsNullDefaultPaymentMethodNullFooterNullRenderingOptionsNullLivemodeFalseMetadataNameAbdoClientNextInvoiceSequence1PhoneNullPreferredLocalesShippingNullTaxExemptNoneTestClockNull(),
      if (livemode != null) 'livemode': livemode,
      if (metadata != null)
        'metadata': metadata
            ?.toIdCusQhoCwQbQ0El8KpObjectCustomerAddressNullBalance0Created1718191996CurrencyNullDefaultSourceNullDelinquentFalseDescriptionNullDiscountNullEmailNullInvoicePrefix16De5047InvoiceSettingsCustomFieldsNullDefaultPaymentMethodNullFooterNullRenderingOptionsNullLivemodeFalseMetadataNameAbdoClientNextInvoiceSequence1PhoneNullPreferredLocalesShippingNullTaxExemptNoneTestClockNull(),
      if (name != null) 'name': name,
      if (nextInvoiceSequence != null)
        'next_invoice_sequence': nextInvoiceSequence,
      if (phone != null) 'phone': phone,
      if (preferredLocales != null) 'preferred_locales': preferredLocales,
      if (shipping != null) 'shipping': shipping,
      if (taxExempt != null) 'tax_exempt': taxExempt,
      if (testClock != null) 'test_clock': testClock,
    };
  }
}
