import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/core/utils/widgets.dart/default_arrow_back.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    centerTitle: true,
    leading: const ArrowBackWidget(),
    title: title == ''
        ? Text(
            title ?? '',
            style: Styles.style25,
          )
        : null,
  );
}
