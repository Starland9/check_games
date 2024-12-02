import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AudioUtils {
  static Future<void> play(String url) async {
    try {
      if (kIsWeb) {
        final response = await http.get(Uri.parse("assets/audio/$url"));
        await AudioPlayer().play(BytesSource(response.bodyBytes));
      } else {
        await FlameAudio.play(url);
      }
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
