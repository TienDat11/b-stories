import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;
  double get paddingTop => MediaQuery.of(this).padding.top;

  double get paddingBottom => MediaQuery.of(this).padding.bottom;

  double get paddingLeft => MediaQuery.of(this).padding.left;

  double get paddingRight => MediaQuery.of(this).padding.right;

  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;

  EdgeInsets get viewPadding => MediaQuery.of(this).viewPadding;

  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;
  void unfocus() {
    FocusScope.of(this).unfocus();
  }
}
