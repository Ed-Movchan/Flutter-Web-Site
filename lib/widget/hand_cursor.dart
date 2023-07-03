import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'dart:html' as html;

// for icon "hand" on the hyperlink icons
class HandCursor extends Listener {
  static final appContainer = html.window.document.getElementById('app-container');
  HandCursor({required Widget child}) : super(
      onPointerHover: (PointerHoverEvent evt) {
        appContainer?.style.cursor='pointer';
      },
      onPointerDown: (PointerDownEvent evt) {
        appContainer?.style.cursor='default';
      },
      child: child
  );
}