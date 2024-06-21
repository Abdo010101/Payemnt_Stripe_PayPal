import 'package:flutter/material.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/thank_you_view_body.dart';
import 'package:payment/core/utils/widgets.dart/build_app_bar.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThankYouViewBody(),
    );
  }
}
