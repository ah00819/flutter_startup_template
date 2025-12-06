import 'package:flutter/material.dart';

class AppTextStyles {
  // Headings (Titles / Display)
  static const TextStyle heading1 = TextStyle(fontSize: 22, fontWeight: FontWeight.w600); // Display Large
  static const TextStyle heading2 = TextStyle(fontSize: 20, fontWeight: FontWeight.w600); // Display Medium
  static const TextStyle heading3 = TextStyle(fontSize: 18, fontWeight: FontWeight.w500); // Title Large
  static const TextStyle heading4 = TextStyle(fontSize: 16, fontWeight: FontWeight.w500); // Title Medium
  static const TextStyle heading5 = TextStyle(fontSize: 15, fontWeight: FontWeight.w500); // Title Small
  static const TextStyle heading6 = TextStyle(fontSize: 14, fontWeight: FontWeight.w500); // Subtitle

  // Body text
  static const TextStyle bodyLarge = TextStyle(fontSize: 15, fontWeight: FontWeight.w400, height: 1.4);
  static const TextStyle bodyMedium = TextStyle(fontSize: 14, fontWeight: FontWeight.w400, height: 1.4);
  static const TextStyle bodyMediumBold = TextStyle(fontSize: 14, fontWeight: FontWeight.w600, height: 1.4);
  static const TextStyle bodySmall = TextStyle(fontSize: 13, fontWeight: FontWeight.w400, height: 1.3);
  static const TextStyle bodySmallBold = TextStyle(fontSize: 13, fontWeight: FontWeight.w600, height: 1.3);

  // Caption / Label
  static const TextStyle caption = TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.2);
  static const TextStyle captionBold = TextStyle(fontSize: 12, fontWeight: FontWeight.w600, height: 1.2);

  // Buttons
  static const TextStyle button = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );
}
