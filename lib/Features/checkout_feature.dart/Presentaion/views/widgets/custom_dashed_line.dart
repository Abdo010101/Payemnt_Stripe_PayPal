import 'package:flutter/material.dart';

class CutomDashedLine extends StatelessWidget {
  const CutomDashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(30, (int index) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Container(
              width: 6,
              height: 2,
              decoration: ShapeDecoration(
                  color: Color(0xffB8B8B8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
        );
      }),
    );
  }
}
