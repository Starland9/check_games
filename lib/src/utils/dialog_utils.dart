import 'package:flutter/material.dart';

class DialogUtils {
  static Future<void> showAlertDialog({
    required BuildContext context,
    String? title,
    required String content,
  }) async {
    // AudioUtils.play('sfx/wrong.mp3');
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title ?? "Alert"),
          content: Text(content),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}
