import 'package:flutter/material.dart';

class CircleAvatarWidgetFromLeft extends StatelessWidget {
  const CircleAvatarWidgetFromLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height / 4,
      left: -20,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}

class CircleAvatarWidgetFromRight extends StatelessWidget {
  const CircleAvatarWidgetFromRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height / 4,
      right: -20,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}
