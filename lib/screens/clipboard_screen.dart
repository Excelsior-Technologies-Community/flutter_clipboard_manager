import 'package:flutter/material.dart';
import 'package:flutter_clipboard_manager/widgets/clipboard_manager_widget.dart';

class ClipboardScreen extends StatelessWidget {
  const ClipboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        title: const Text('Clipboard Manager'),
      ),
      body:  Padding(
        padding: EdgeInsets.all(16),
        child: ClipboardManagerWidget(),
      ),
    );
  }
}
