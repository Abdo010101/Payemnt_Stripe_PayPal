import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ArrowBackWidget extends StatelessWidget {
  const ArrowBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        'assets/images/Arrow 1.svg',
      ),
    );
  }
}
