import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class CheckOutInfoItem extends StatelessWidget {
  const CheckOutInfoItem(
      {super.key, required this.title, required this.price, this.style});
  final String title;
  final String price;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: style ?? Styles.style18,
        ),
        const Spacer(),
        Text(
          price,
          style: style ?? Styles.style18,
        ),
      ],
    );
  }
}
