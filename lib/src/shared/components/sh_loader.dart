import 'package:flutter/material.dart';

class ShLoader extends StatelessWidget {
  const ShLoader({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator.adaptive(
        valueColor: AlwaysStoppedAnimation<Color?>(color),
      ),
    );
  }
}
