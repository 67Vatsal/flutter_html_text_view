import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'html_node.dart';
import 'html_parser.dart';


class HtmlTextView extends StatelessWidget {
  final String html;
  final TextStyle? baseStyle;


  const HtmlTextView({
    super.key,
    required this.html,
    this.baseStyle,
  });


  @override
  Widget build(BuildContext context) {
    final List<HtmlNode> nodes = HtmlParser.parse(html, context);


    return RichText(
      text: TextSpan(
        style: baseStyle ?? DefaultTextStyle.of(context).style,
        children: nodes.map((node) {
          return TextSpan(
            text: node.text,
            style: node.style,
            recognizer: node.onTap != null
                ? (TapGestureRecognizer()..onTap = node.onTap)
                : null,
          );
        }).toList(),
      ),
    );
  }
}