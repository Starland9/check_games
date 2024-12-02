import 'package:flutter/material.dart';

class ShLoader extends StatelessWidget {
  const ShLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator.adaptive());
  }
}
