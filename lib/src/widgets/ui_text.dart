import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

enum TxtSize { XLarge, Large, Medium, Small, Tiny }
enum TextType { Heading, Paragraph, Label }

class UIText extends StatelessWidget {
  final TxtSize size;
  final String text;
  final TextType type;
  final TextAlign textAlign;
  final FontWeight? fontWeight;
  final Color? color;

  const UIText(this.text,
      {this.fontWeight,
      this.color,
      this.textAlign = TextAlign.start,
      this.size = TxtSize.Medium,
      this.type = TextType.Paragraph});

  const UIText.label(this.text,
      {this.fontWeight,
      this.color = kTextPrimaryLightColor,
      this.size = TxtSize.Medium,
      this.textAlign = TextAlign.start})
      : type = TextType.Label;

  const UIText.heading(this.text,
      {this.fontWeight,
      this.color = kTextPrimaryLightColor,
      this.size = TxtSize.Medium,
      this.textAlign = TextAlign.start})
      : type = TextType.Heading;

  const UIText.paragraph(this.text,
      {this.fontWeight,
      this.color = kTextPrimaryLightColor,
      this.size = TxtSize.Medium,
      this.textAlign = TextAlign.start})
      : type = TextType.Paragraph;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight ?? _mapWeightType(type),
          fontSize: type == TextType.Heading
              ? _mapSizeHeading(size)
              : _mapSizeParagraph(size)),
    );
  }

  double _mapSizeHeading(TxtSize size) {
    switch (size) {
      case TxtSize.XLarge:
        return 36;
      case TxtSize.Large:
        return 32;
      case TxtSize.Medium:
        return 28;
      case TxtSize.Small:
        return 24;
      default:
        return 22;
    }
  }

  double _mapSizeParagraph(TxtSize size) {
    switch (size) {
      case TxtSize.Large:
        return 20;
      case TxtSize.Medium:
        return 18;
      case TxtSize.Small:
        return 16;
      default:
        return 14;
    }
  }

  FontWeight _mapWeightType(TextType type) {
    switch (type) {
      case TextType.Label:
        return FontWeight.w600;
      case TextType.Heading:
        return FontWeight.bold;
      default:
        return FontWeight.normal;
    }
  }
}
