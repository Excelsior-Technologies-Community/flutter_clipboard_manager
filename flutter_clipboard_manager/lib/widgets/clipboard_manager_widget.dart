import 'package:flutter/material.dart';
import 'package:flutter_clipboard_manager/services/clipboard_service.dart';

class ClipboardManagerWidget extends StatefulWidget {
  const ClipboardManagerWidget({super.key});

  @override
  State<ClipboardManagerWidget> createState() => _ClipboardManagerWidgetState();
}

class _ClipboardManagerWidgetState extends State<ClipboardManagerWidget> {
  final TextEditingController controller = TextEditingController();
  String clipboardText = '';

  Future<void> copyText() async {
    await ClipboardService.copyText(controller.text);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Text copied to clipboard')));
  }

  Future<void> pasteText() async {
    final text = await ClipboardService.pasteText();
    controller.text = text;
    controller.selection = TextSelection.fromPosition(
      TextPosition(offset: controller.text.length),
    );
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Text paste to clipboard')));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: 'Enter text',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),

        ElevatedButton(onPressed: copyText, child: const Text('Copy')),

        ElevatedButton(onPressed: pasteText, child: const Text('Paste')),
      ],
    );
  }
}
