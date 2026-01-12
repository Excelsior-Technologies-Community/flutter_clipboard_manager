# ClipboardManager

A simple, reusable Clipboard Manager Widget for Flutter that allows you to copy and paste text using the system clipboard.
This package is lightweight, beginner-friendly, and future-ready for enhancements like clipboard history.

---
## ✨ Features
* 📄 Copy text to system clipboard
* 📋 Paste text from clipboard
* 🧩 Reusable widget
* 🧠 Clean service-based architecture
* 🚀 Easy to integrate into any Flutter project
* 📱 Works on Android, iOS, Web, Desktop

---
## ✨ Preview
![screen-20260112-1504232](https://github.com/user-attachments/assets/a7679116-bc88-4687-b0b0-1b7db6af7acc)

---
## ✨ Installation
Add this to your package's pubspec.yaml file:
```
dependencies:
  flutter_clipboard_manager:
    path: ../flutter_clipboard_manager  # For local development
```
from git:
```
dependencies:
  flutter_clipboard_manager:
    git:
      url: https://github.com/yourusername/flutter_clipboard_manager.git  # Your github path
``` 
Then run:
```
flutter pub get
```
---
## 📂 Project Structure
```
flutter_clipboard_manager/
│
├── lib/
│   ├── flutter_clipboard_manager.dart
│   │
│   ├── services/
│   │   └── clipboard_service.dart
│   │
│   └── widgets/
│       └── clipboard_manager_widget.dart
│
├── pubspec.yaml
└── README.md
```
---
## 📥 Import Package
```
import 'package:flutter_clipboard_manager/flutter_clipboard_manager.dart';

```
---
## 🧩 Usage
##### ✅ Use ClipboardManagerWidget
```
ClipboardManagerWidget()
```
##### Example:
```
import 'package:flutter/material.dart';
import 'package:flutter_clipboard_manager/flutter_clipboard_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Clipboard Manager')),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: ClipboardManagerWidget(),
          ),
        ),
      ),
    );
  }
}
```
---
## 🛠️ Clipboard Service Usage (Without Widget)
If you want to create your own UI:
##### ✂️ Copy Text
```
await ClipboardService.copyText("Hello Flutter");
```
##### 📋 Paste Text
```
String text = await ClipboardService.pasteText();
```
---
## 🧠 How It Works
* Uses Flutter’s built-in Clipboard API
* ClipboardService handles all clipboard logic
* ClipboardManagerWidget provides ready-to-use UI
* Clean separation of UI and logic
---
## ❗ Notes
* No extra permissions required
* No third-party dependencies
* Safe and lightweight
---

## 📜 License
MIT License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
---
