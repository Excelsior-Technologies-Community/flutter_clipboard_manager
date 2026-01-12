import 'package:flutter/services.dart';

class ClipboardService {
  /// Copy text to clipboard
  static Future<void> copyText(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
  }

  /// Read text from clipboard
  static Future<String> pasteText() async {
    final data = await Clipboard.getData('text/plain');
    return data?.text ?? '';
  }
}
