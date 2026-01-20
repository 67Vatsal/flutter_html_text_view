import 'package:flutter/material.dart';
import 'html_node.dart';


class HtmlParser {
  static List<HtmlNode> parse(String html, BuildContext context) {
    final List<HtmlNode> nodes = [];


    html = html.replaceAll('', '');


    final RegExp tagRegex = RegExp(
        r'<(b|i|u|h1|h2|h3|p|br|a)([^>]*)>(.*?)</\1>', dotAll: true);


    int currentIndex = 0;


    for (final match in tagRegex.allMatches(html)) {
      if (match.start > currentIndex) {
        nodes.add(HtmlNode(
          text: html.substring(currentIndex, match.start),
          style: const TextStyle(fontSize: 14),
        ));
      }


      final tag = match.group(1)!;
      final attributes = match.group(2) ?? '';
      final content = match.group(3) ?? '';


      nodes.add(_createNode(tag, attributes, content, context));
      currentIndex = match.end;
    }


    if (currentIndex < html.length) {
      nodes.add(HtmlNode(
        text: html.substring(currentIndex),
        style: const TextStyle(fontSize: 14),
      ));
    }


    return nodes;
  }


  static HtmlNode _createNode(String tag,
      String attributes,
      String content,
      BuildContext context,) {
    switch (tag) {
      case 'b':
        return HtmlNode(
          text: content,
          style: const TextStyle(fontWeight: FontWeight.bold),
        );

      case 'i':
        return HtmlNode(
          text: content,
          style: const TextStyle(fontStyle: FontStyle.italic),
        );

      case 'u':
        return HtmlNode(
          text: content,
          style: const TextStyle(decoration: TextDecoration.underline),
        );

      case 'h1':
        return HtmlNode(
          text: content,
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        );

      case 'h2':
        return HtmlNode(
          text: content,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        );

      case 'h3':
        return HtmlNode(
          text: content,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        );

      case 'p':
        return HtmlNode(
          text: '$content\n',
          style: const TextStyle(fontSize: 14),
        );

      default:
      // VERY IMPORTANT
        return HtmlNode(
          text: content,
          style: const TextStyle(fontSize: 14),
        );
    }
  }
}
