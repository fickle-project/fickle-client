import 'package:flutter/material.dart';

extension ScreenSize on Size {
  bool get isMobile => width < 600;

  bool get isTablet => width >= 600 && width < 900;

  bool get isDesktop => width >= 900;
}
