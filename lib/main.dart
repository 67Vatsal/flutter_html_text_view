import 'package:flutter/material.dart';

import 'html_textview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('HTML TextView Example')),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: HtmlTextView(
            html: '''
<h1>Flutter HTMLTextView</h1>

<p>
Flutter <b>HTMLTextView</b> is a lightweight widget that renders
<i>basic HTML content</i> using <u>pure Flutter widgets</u>.
</p>

<h2>Why use this library?</h2>

<p>
• No third-party dependencies<br>
• Full control over UI<br>
• Easy to extend and maintain
</p>

<h3>Useful Links</h3>

<p>
Visit the official
<a href="https://flutter.dev">Flutter Website</a>
to learn more about Flutter development.
</p>
''',
          ),
        ),
      ),
    );
  }
}
