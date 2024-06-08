import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const mediumWeight = FontWeight.w500;

enum FontFamily {
  rubik,
  nunito,
}

/// Headline Fonts
TextStyle kHeadlineLarge(FontFamily font) {
  if (font == FontFamily.rubik) {
    return GoogleFonts.rubik(
      fontSize: 36.0,
      letterSpacing: 0,
      fontWeight: FontWeight.bold,
    );
  } else if (font == FontFamily.nunito) {
    return GoogleFonts.nunito(
      fontSize: 36.0,
      letterSpacing: 0,
      fontWeight: FontWeight.bold,
    );
  } else {
    throw Exception('Font is not supported');
  }
}

TextStyle kHeadlineMedium(FontFamily font) {
  if (font == FontFamily.rubik) {
    return GoogleFonts.rubik(
      fontSize: 36.0,
      letterSpacing: 0,
      fontWeight: mediumWeight,
    );
  } else if (font == FontFamily.nunito) {
    return GoogleFonts.nunito(
      fontSize: 36.0,
      letterSpacing: 0,
    );
  } else {
    throw Exception('Font is not supported');
  }
}

/// Title Fonts
TextStyle kTitleLarge(FontFamily font) {
  if (font == FontFamily.rubik) {
    return GoogleFonts.rubik(
      fontSize: 28.0,
      letterSpacing: 0,
      fontWeight: mediumWeight,
    );
  } else if (font == FontFamily.nunito) {
    return GoogleFonts.nunito(
      fontSize: 28.0,
      letterSpacing: 0,
    );
  } else {
    throw Exception('Font is not supported');
  }
}

TextStyle kTitleMedium(FontFamily font) {
  if (font == FontFamily.rubik) {
    return GoogleFonts.rubik(
      fontSize: 24.0,
      letterSpacing: 0,
      fontWeight: mediumWeight,
    );
  } else if (font == FontFamily.nunito) {
    return GoogleFonts.nunito(
      fontSize: 24.0,
      letterSpacing: 0,
    );
  } else {
    throw Exception('Font is not supported');
  }
}

TextStyle kTitleSmall(FontFamily font) {
  if (font == FontFamily.rubik) {
    return GoogleFonts.rubik(
      fontSize: 20.0,
      letterSpacing: 0,
    );
  } else if (font == FontFamily.nunito) {
    return GoogleFonts.nunito(
      fontSize: 20.0,
      letterSpacing: 0,
    );
  } else {
    throw Exception('Font is not supported');
  }
}

/// Label Fonts
TextStyle kLabelLarge(FontFamily font) {
  if (font == FontFamily.rubik) {
    return GoogleFonts.rubik(
      fontSize: 16.0,
      letterSpacing: 0.15,
    );
  } else if (font == FontFamily.nunito) {
    return GoogleFonts.nunito(
      fontSize: 16.0,
      letterSpacing: 0.15,
    );
  } else {
    throw Exception('Font is not supported');
  }
}

TextStyle kLabelMedium(FontFamily font) {
  if (font == FontFamily.rubik) {
    return GoogleFonts.rubik(
      fontSize: 14.0,
      letterSpacing: 0.25,
    );
  } else if (font == FontFamily.nunito) {
    return GoogleFonts.nunito(
      fontSize: 14.0,
      letterSpacing: 0.25,
    );
  } else {
    throw Exception('Font is not supported');
  }
}

TextStyle kLabelSmall(FontFamily font) {
  if (font == FontFamily.rubik) {
    return GoogleFonts.rubik(
      fontSize: 10.0,
      letterSpacing: 0.4,
      fontWeight: mediumWeight,
    );
  } else if (font == FontFamily.nunito) {
    return GoogleFonts.nunito(
      fontSize: 10.0,
      letterSpacing: 0.4,
    );
  } else {
    throw Exception('Font is not supported');
  }
}
