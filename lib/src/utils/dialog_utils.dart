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

  static Future<bool> showDoubleConfirmDialog({
    required BuildContext context,
    String? title,
    required String content,
    required String confirmText,
    required String cancelText,
  }) async {
    // AudioUtils.play('sfx/wrong.mp3');
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title ?? "Confirmation"),
          content: Text(content),
          actions: [
            TextButton(
              child: Text(cancelText),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            TextButton(
              child: Text(confirmText),
              onPressed: () => Navigator.of(context).pop(true),
            ),
          ],
        );
      },
    );
  }
}
