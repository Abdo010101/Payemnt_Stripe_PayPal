import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/my_card_view_body.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/core/utils/widgets.dart/build_app_bar.dart';
import 'package:payment/core/utils/widgets.dart/default_arrow_back.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body: MyCardViewBody(),
    );
  }
}

//! steps
//1 scaleFactor
//2 responive fontsize
//3(min ,max fontsize)
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fontSize;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  //mobile =400
  //tablet = 700
  // destiop = 100
  double width = MediaQuery.sizeOf(context).width;

  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 100;
  }
}
