import 'package:flutter/material.dart';
import 'package:design_system/src/shared/app_colors.dart';
import 'package:design_system/src/shared/styles.dart';

class UIText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign alignment;
  const UIText.headingXXLargeStyle(this.text,
      {TextAlign align = TextAlign.start})
      : style = headingXXLargeStyle,
        alignment = align;
  const UIText.headingXLargeStyle(this.text,
      {TextAlign align = TextAlign.start})
      : style = headingXLargeStyle,
        alignment = align;

  const UIText.headingLargeStyle(this.text, {TextAlign align = TextAlign.start})
      : style = headingLargeStyle,
        alignment = align;
  const UIText.headingMediumStyle(this.text,
      {TextAlign align = TextAlign.start})
      : style = headingMediumStyle,
        alignment = align;

  const UIText.headingSmallStyle(this.text, {TextAlign align = TextAlign.start})
      : style = headingSmallStyle,
        alignment = align;

  const UIText.headingXSmallStyle(this.text,
      {TextAlign align = TextAlign.start})
      : style = headingXSmallStyle,
        alignment = align;
  const UIText.labelLargeStyle(this.text, {TextAlign align = TextAlign.start})
      : style = labelLargeStyle,
        alignment = align;

  const UIText.labelMediumStyle(this.text, {TextAlign align = TextAlign.start})
      : style = labelMediumStyle,
        alignment = align;
  const UIText.labelSmallStyle(this.text, {TextAlign align = TextAlign.start})
      : style = labelSmallStyle,
        alignment = align;

  const UIText.labelTinyStyle(this.text, {TextAlign align = TextAlign.start})
      : style = labelTinyStyle,
        alignment = align;
  const UIText.paragraphLargeStyle(this.text,
      {TextAlign align = TextAlign.start})
      : style = paragraphLargeStyle,
        alignment = align;

  const UIText.paragraphMediumStyle(this.text,
      {TextAlign align = TextAlign.start})
      : style = paragraphMediumStyle,
        alignment = align;
  const UIText.paragraphSmallStyle(this.text,
      {TextAlign align = TextAlign.start})
      : style = paragraphSmallStyle,
        alignment = align;

  const UIText.paragraphTinyStyle(this.text,
      {TextAlign align = TextAlign.start})
      : style = paragraphTinyStyle,
        alignment = align;

  UIText.bodystyle(this.text,
      {Color color = TextPrimaryColor, TextAlign align = TextAlign.start})
      : style = bodystyle.copyWith(color: color),
        alignment = align;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
