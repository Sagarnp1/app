import 'package:flutter/material.dart';
import 'package:meloplay/src/core/theme/themes.dart';

class AppThemeData {
  static ThemeData getTheme() {
    final theme = Themes.getTheme();
    return ThemeData(
      colorScheme: theme.colorScheme,
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          size: 20,
          color: Colors.white, // Customize back button icon color
        ),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: Colors.white,
        inactiveTrackColor: Colors.grey,
        thumbColor: Colors.white,
        trackHeight: 2.0,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6.0),
        overlayShape: SliderComponentShape.noOverlay,
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: theme.primaryColor,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: theme.primaryColor,
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: theme.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}