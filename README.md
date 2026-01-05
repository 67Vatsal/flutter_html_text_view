## Flutter HTMLTextView 🧩

A lightweight Flutter library to render **basic HTML text** using **pure Flutter widgets**, without using **any third-party packages** like `flutter_html` or `webview`.

Perfect for:
- Lightweight apps
- Learning HTML parsing
- Custom UI control
- Open-source contributors

---

## ✨ Features

- ✅ No third-party dependencies
- 🧱 Uses `RichText` & `TextSpan`
- 🧠 Custom HTML parser
- 🔗 Clickable `<a href>` links
- 🎨 Fully customizable styles
- 🚀 Pub.dev ready

---

## ❌ Not a Browser Engine

This library **does NOT aim to support full HTML/CSS** like a browser.

Supported HTML is **intentional and controlled** to keep the library:
- Fast
- Predictable
- Extendable

---

## Preview

![Screenshot_20260105_152416 1](https://github.com/user-attachments/assets/dd41f612-ba3a-40b9-8f7f-8fa4b4cb446f)


## ✅ Supported HTML Tags

| HTML Tag | Description |
|--------|-------------|
| `<b>` | Bold text |
| `<i>` | Italic text |
| `<u>` | Underline |
| `<p>` | Paragraph |
| `<h1>` | Heading 1 |
| `<h2>` | Heading 2 |
| `<h3>` | Heading 3 |
| `<a href>` | Clickable link |
| Plain text | Supported |

---

## 📦 Installation

Add this to your `pubspec.yaml`:

```
yaml
dependencies:
  flutter_html_textview: ^1.0.0

then run
flutter pub get
```
## 🚀 Usage

Basic Example

```
import 'package:flutter/material.dart';
import 'package:flutter_html_textview/flutter_html_textview.dart';

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: HtmlTextView(
          html: '''
          <h1>Hello</h1>
          <p>This is <b>bold</b>, <i>italic</i>, and <u>underline</u></p>
          <p>Visit <a href="https://flutter.dev">Flutter</a></p>
          ''',
        ),
      ),
    );
  }
}
```
## 🎨 Custom Styling
```
HtmlTextView(
  html: '<p>Hello World</p>',
  baseStyle: TextStyle(
    fontSize: 16,
    color: Colors.black87,
  ),
);
```

## 📄 License
```
MIT License

Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
