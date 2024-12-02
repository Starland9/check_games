import 'dart:io';

import 'package:flutter/foundation.dart';

bool isDesktop() {
  if (kIsWeb) return true;
  return Platform.isMacOS || Platform.isWindows || Platform.isLinux;
}