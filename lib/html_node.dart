import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class HtmlNode {
  final String text;
  final TextStyle style;
  final GestureTapCallback? onTap;


  HtmlNode({
    required this.text,
    required this.style,
    this.onTap,
  });
}