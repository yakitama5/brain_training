import 'package:flutter/material.dart';

class MaterialTheme {
  const MaterialTheme(this.textTheme);
  final TextTheme textTheme;

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff8c4a60),
      surfaceTint: Color(0xff8c4a60),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffd9e2),
      onPrimaryContainer: Color(0xff3a071d),
      secondary: Color(0xff006a65),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff9df2ea),
      onSecondaryContainer: Color(0xff00201e),
      tertiary: Color(0xff7c5635),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdcc2),
      onTertiaryContainer: Color(0xff2e1500),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff8f8),
      onBackground: Color(0xff22191c),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff22191c),
      surfaceVariant: Color(0xfff2dde2),
      onSurfaceVariant: Color(0xff514347),
      outline: Color(0xff837377),
      outlineVariant: Color(0xffd5c2c6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372e30),
      inverseOnSurface: Color(0xfffdedef),
      inversePrimary: Color(0xffffb0c8),
      primaryFixed: Color(0xffffd9e2),
      onPrimaryFixed: Color(0xff3a071d),
      primaryFixedDim: Color(0xffffb0c8),
      onPrimaryFixedVariant: Color(0xff703349),
      secondaryFixed: Color(0xff9df2ea),
      onSecondaryFixed: Color(0xff00201e),
      secondaryFixedDim: Color(0xff81d5ce),
      onSecondaryFixedVariant: Color(0xff00504c),
      tertiaryFixed: Color(0xffffdcc2),
      onTertiaryFixed: Color(0xff2e1500),
      tertiaryFixedDim: Color(0xffefbd94),
      onTertiaryFixedVariant: Color(0xff623f20),
      surfaceDim: Color(0xffe6d6d9),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f2),
      surfaceContainer: Color(0xfffaeaed),
      surfaceContainerHigh: Color(0xfff5e4e7),
      surfaceContainerHighest: Color(0xffefdfe1),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff6b2f45),
      surfaceTint: Color(0xff8c4a60),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa55f77),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff004c47),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff25817b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff5d3b1c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff956c49),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f8),
      onBackground: Color(0xff22191c),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff22191c),
      surfaceVariant: Color(0xfff2dde2),
      onSurfaceVariant: Color(0xff4d3f43),
      outline: Color(0xff6a5b5f),
      outlineVariant: Color(0xff87777a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372e30),
      inverseOnSurface: Color(0xfffdedef),
      inversePrimary: Color(0xffffb0c8),
      primaryFixed: Color(0xffa55f77),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff89475e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff25817b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff006762),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff956c49),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff7a5433),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe6d6d9),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f2),
      surfaceContainer: Color(0xfffaeaed),
      surfaceContainerHigh: Color(0xfff5e4e7),
      surfaceContainerHighest: Color(0xffefdfe1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff420e24),
      surfaceTint: Color(0xff8c4a60),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6b2f45),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff002725),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff004c47),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff371b01),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5d3b1c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f8),
      onBackground: Color(0xff22191c),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xfff2dde2),
      onSurfaceVariant: Color(0xff2c2124),
      outline: Color(0xff4d3f43),
      outlineVariant: Color(0xff4d3f43),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372e30),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffffe6eb),
      primaryFixed: Color(0xff6b2f45),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff50192e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff004c47),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003330),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5d3b1c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff432608),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe6d6d9),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f2),
      surfaceContainer: Color(0xfffaeaed),
      surfaceContainerHigh: Color(0xfff5e4e7),
      surfaceContainerHighest: Color(0xffefdfe1),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb0c8),
      surfaceTint: Color(0xffffb0c8),
      onPrimary: Color(0xff541d32),
      primaryContainer: Color(0xff703349),
      onPrimaryContainer: Color(0xffffd9e2),
      secondary: Color(0xff81d5ce),
      onSecondary: Color(0xff003734),
      secondaryContainer: Color(0xff00504c),
      onSecondaryContainer: Color(0xff9df2ea),
      tertiary: Color(0xffefbd94),
      onTertiary: Color(0xff48290c),
      tertiaryContainer: Color(0xff623f20),
      onTertiaryContainer: Color(0xffffdcc2),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff191113),
      onBackground: Color(0xffefdfe1),
      surface: Color(0xff191113),
      onSurface: Color(0xffefdfe1),
      surfaceVariant: Color(0xff514347),
      onSurfaceVariant: Color(0xffd5c2c6),
      outline: Color(0xff9e8c90),
      outlineVariant: Color(0xff514347),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdfe1),
      inverseOnSurface: Color(0xff372e30),
      inversePrimary: Color(0xff8c4a60),
      primaryFixed: Color(0xffffd9e2),
      onPrimaryFixed: Color(0xff3a071d),
      primaryFixedDim: Color(0xffffb0c8),
      onPrimaryFixedVariant: Color(0xff703349),
      secondaryFixed: Color(0xff9df2ea),
      onSecondaryFixed: Color(0xff00201e),
      secondaryFixedDim: Color(0xff81d5ce),
      onSecondaryFixedVariant: Color(0xff00504c),
      tertiaryFixed: Color(0xffffdcc2),
      onTertiaryFixed: Color(0xff2e1500),
      tertiaryFixedDim: Color(0xffefbd94),
      onTertiaryFixedVariant: Color(0xff623f20),
      surfaceDim: Color(0xff191113),
      surfaceBright: Color(0xff413739),
      surfaceContainerLowest: Color(0xff140c0e),
      surfaceContainerLow: Color(0xff22191c),
      surfaceContainer: Color(0xff261d20),
      surfaceContainerHigh: Color(0xff31282a),
      surfaceContainerHighest: Color(0xff3c3235),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb7cc),
      surfaceTint: Color(0xffffb0c8),
      onPrimary: Color(0xff330218),
      primaryContainer: Color(0xffc67b93),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xff85d9d2),
      onSecondary: Color(0xff001a18),
      secondaryContainer: Color(0xff489e98),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff3c198),
      onTertiary: Color(0xff261100),
      tertiaryContainer: Color(0xffb48862),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff191113),
      onBackground: Color(0xffefdfe1),
      surface: Color(0xff191113),
      onSurface: Color(0xfffff9f9),
      surfaceVariant: Color(0xff514347),
      onSurfaceVariant: Color(0xffdac6ca),
      outline: Color(0xffb19ea2),
      outlineVariant: Color(0xff907f83),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdfe1),
      inverseOnSurface: Color(0xff31282a),
      inversePrimary: Color(0xff71344a),
      primaryFixed: Color(0xffffd9e2),
      onPrimaryFixed: Color(0xff2b0013),
      primaryFixedDim: Color(0xffffb0c8),
      onPrimaryFixedVariant: Color(0xff5b2238),
      secondaryFixed: Color(0xff9df2ea),
      onSecondaryFixed: Color(0xff001413),
      secondaryFixedDim: Color(0xff81d5ce),
      onSecondaryFixedVariant: Color(0xff003d3a),
      tertiaryFixed: Color(0xffffdcc2),
      onTertiaryFixed: Color(0xff1f0c00),
      tertiaryFixedDim: Color(0xffefbd94),
      onTertiaryFixedVariant: Color(0xff4e2f11),
      surfaceDim: Color(0xff191113),
      surfaceBright: Color(0xff413739),
      surfaceContainerLowest: Color(0xff140c0e),
      surfaceContainerLow: Color(0xff22191c),
      surfaceContainer: Color(0xff261d20),
      surfaceContainerHigh: Color(0xff31282a),
      surfaceContainerHighest: Color(0xff3c3235),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f9),
      surfaceTint: Color(0xffffb0c8),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffb7cc),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffeafffc),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff85d9d2),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf8),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff3c198),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff191113),
      onBackground: Color(0xffefdfe1),
      surface: Color(0xff191113),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff514347),
      onSurfaceVariant: Color(0xfffff9f9),
      outline: Color(0xffdac6ca),
      outlineVariant: Color(0xffdac6ca),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdfe1),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff4c162c),
      primaryFixed: Color(0xffffdfe6),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb7cc),
      onPrimaryFixedVariant: Color(0xff330218),
      secondaryFixed: Color(0xffa1f6ee),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff85d9d2),
      onSecondaryFixedVariant: Color(0xff001a18),
      tertiaryFixed: Color(0xffffe1cc),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff3c198),
      onTertiaryFixedVariant: Color(0xff261100),
      surfaceDim: Color(0xff191113),
      surfaceBright: Color(0xff413739),
      surfaceContainerLowest: Color(0xff140c0e),
      surfaceContainerLow: Color(0xff22191c),
      surfaceContainer: Color(0xff261d20),
      surfaceContainerHigh: Color(0xff31282a),
      surfaceContainerHighest: Color(0xff3c3235),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      surfaceTint: surfaceTint,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
      primaryFixed: primaryFixed,
      onPrimaryFixed: onPrimaryFixed,
      primaryFixedDim: primaryFixedDim,
      onPrimaryFixedVariant: onPrimaryFixedVariant,
      secondaryFixed: secondaryFixed,
      onSecondaryFixed: onSecondaryFixed,
      secondaryFixedDim: secondaryFixedDim,
      onSecondaryFixedVariant: onSecondaryFixedVariant,
      tertiaryFixed: tertiaryFixed,
      onTertiaryFixed: onTertiaryFixed,
      tertiaryFixedDim: tertiaryFixedDim,
      onTertiaryFixedVariant: onTertiaryFixedVariant,
      surfaceDim: surfaceDim,
      surfaceBright: surfaceBright,
      surfaceContainerLowest: surfaceContainerLowest,
      surfaceContainerLow: surfaceContainerLow,
      surfaceContainer: surfaceContainer,
      surfaceContainerHigh: surfaceContainerHigh,
      surfaceContainerHighest: surfaceContainerHighest,
    );
  }
}

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
