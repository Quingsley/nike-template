import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

extension on Scheme {
  ColorScheme toColorScheme(Brightness brightness) {
    return ColorScheme(
      brightness: brightness,
      primary: Color(primary),
      onPrimary: Color(onPrimary),
      secondary: Color(secondary),
      onSecondary: Color(onSecondary),
      error: Color(error),
      onError: Color(onError),
      background: Color(background),
      onBackground: Color(onBackground),
      surface: Color(surface),
      onSurface: Color(onSurface),
    );
  }
}

@immutable
class NikeTheme extends ThemeExtension<NikeTheme> {
  final Color primaryColor;
  final Color tertiaryColor;
  final Color neutralColor;

  const NikeTheme(
      {this.primaryColor = const Color(0xff0D6EFD),
      this.tertiaryColor = const Color(0xffff4c24),
      this.neutralColor = const Color(0xffffffff)});

  ThemeData toThemeData() {
    final colorScheme = _scheme().toColorScheme(Brightness.light);
    return _base(colorScheme).copyWith(brightness: colorScheme.brightness);
  }

  @override
  ThemeExtension<NikeTheme> copyWith({
    Color? primaryColor,
    Color? tertiaryColor,
    Color? neutralColor,
  }) {
    return NikeTheme(
        primaryColor: primaryColor ?? this.primaryColor,
        tertiaryColor: tertiaryColor ?? this.tertiaryColor,
        neutralColor: neutralColor ?? this.neutralColor);
  }

  @override
  ThemeExtension<NikeTheme> lerp(
      covariant ThemeExtension<NikeTheme>? other, double t) {
    if (other is! NikeTheme) return this;
    return NikeTheme(
        primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
        tertiaryColor: Color.lerp(tertiaryColor, other.tertiaryColor, t)!,
        neutralColor: Color.lerp(neutralColor, other.neutralColor, t)!);
  }

  ThemeData _base(ColorScheme colorScheme) {
    final primaryTextTheme = GoogleFonts.ralewayTextTheme(TextTheme(
        displayLarge: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.bold,
      color: neutralColor,
    )));

    final secondaryTextTheme = GoogleFonts.poppinsTextTheme();
    final textTheme = primaryTextTheme.copyWith(
      displayLarge: primaryTextTheme.displayLarge,
      displayMedium: primaryTextTheme.displayMedium,
      displaySmall: secondaryTextTheme.displaySmall,
    );

    final isLight = colorScheme.brightness == Brightness.light;
    return ThemeData(
      useMaterial3: true,
      extensions: [this],
      colorScheme: colorScheme,
      scaffoldBackgroundColor: isLight ? neutralColor : colorScheme.background,
      textTheme: textTheme,
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ElevatedButton.styleFrom(
      //     foregroundColor: colorScheme.onPrimary,
      //     backgroundColor: colorScheme.onPri,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(8),
      //     ),
      //   ),
      // ),
    );
  }

  Scheme _scheme() {
    final base = CorePalette.of(primaryColor.value);
    final primary = base.primary;
    final tertiary = CorePalette.of(tertiaryColor.value).primary;
    final neutral = CorePalette.of(neutralColor.value).neutral;
    return Scheme(
        primary: primary.get(40),
        onPrimary: primary.get(100),
        primaryContainer: primary.get(90),
        onPrimaryContainer: primary.get(10),
        secondary: base.secondary.get(40),
        onSecondary: base.secondary.get(100),
        secondaryContainer: base.secondary.get(90),
        onSecondaryContainer: base.secondary.get(10),
        tertiary: tertiary.get(90),
        onTertiary: tertiary.get(100),
        tertiaryContainer: tertiary.get(90),
        onTertiaryContainer: tertiary.get(10),
        error: base.error.get(40),
        onError: base.error.get(100),
        errorContainer: base.error.get(90),
        onErrorContainer: base.error.get(10),
        background: neutral.get(99),
        onBackground: neutral.get(10),
        surface: neutral.get(99),
        onSurface: neutral.get(10),
        surfaceVariant: base.neutralVariant.get(40),
        onSurfaceVariant: base.neutralVariant.get(80),
        outline: base.neutralVariant.get(60),
        outlineVariant: base.neutralVariant.get(80),
        shadow: neutral.get(0),
        scrim: neutral.get(0),
        inverseSurface: neutral.get(20),
        inverseOnSurface: neutral.get(95),
        inversePrimary: primary.get(80));
  }
}
