import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard(
      {super.key, required this.formKey, required this.autovalidateMode});
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CreditCardWidget(
        cardNumber: cardNumber,
        onCreditCardWidgetChange: (CreditCardBrand) {},
        expiryDate: expiryDate,
        cardHolderName: cardHolderName,
        cvvCode: cvvCode,
        isChipVisible: true,
        showBackView: showBackView,
      ),
      CreditCardForm(
        autovalidateMode: widget.autovalidateMode,
        cardNumber: cardNumber,
        expiryDate: expiryDate,
        cardHolderName: cardHolderName,
        cvvCode: cvvCode,
        onCreditCardModelChange: (creditCardModel) {
          cardNumber = creditCardModel.cardNumber;
          expiryDate = creditCardModel.expiryDate;
          cvvCode = creditCardModel.cvvCode;
          showBackView = creditCardModel.isCvvFocused;
          cardHolderName = creditCardModel.cardHolderName;
          setState(() {});
        },
        formKey: widget.formKey,
        inputConfiguration: InputConfiguration(
            // cardHolderDecoration: InputDecoration(
            //     labelText: 'Card Holder', labelStyle: Styles.style18),
            // expiryDateDecoration: InputDecoration(
            //     labelText: 'Expiration Date', labelStyle: Styles.style18),
            // cardNumberDecoration: InputDecoration(
            //     labelText: 'Card Number', labelStyle: Styles.style18),
            // cvvCodeDecoration:
            //     InputDecoration(labelText: 'CVV', labelStyle: Styles.style18),
            // cardNumberTextStyle: Styles.style18W600,
            // expiryDateTextStyle: Styles.style18W600,
            // cardHolderTextStyle: Styles.style18W600,
            // cvvCodeTextStyle: Styles.style18W600,
            ),
      )
    ]);
  }
}
