import 'package:flutter/material.dart';

enum Size { XXLarge, XLarge, Large, Medium, Small, Tiny }
enum TextType { Heading, Paragraph, Label }

class UIText extends StatelessWidget {
  final Size size;
  final String text;
  final TextType type;
  final TextAlign textAlign;
  final FontWeight? fontWeight;

  const UIText(this.text,
      {this.fontWeight,
      this.textAlign = TextAlign.start,
      this.size = Size.Medium,
      this.type = TextType.Paragraph});

  const UIText.label(this.text,
      {this.fontWeight,
      this.size = Size.Medium,
      this.textAlign = TextAlign.start})
      : type = TextType.Label;

  const UIText.heading(this.text,
      {this.fontWeight,
      this.size = Size.Medium,
      this.textAlign = TextAlign.start})
      : type = TextType.Heading;

  const UIText.paragraph(this.text,
      {this.fontWeight,
      this.size = Size.Medium,
      this.textAlign = TextAlign.start})
      : type = TextType.Paragraph;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: fontWeight ?? _mapWeightType(type),
          fontSize: type == TextType.Heading
              ? _mapSizeHeading(size)
              : _mapSizeParagraph(size)),
    );
  }

  double _mapSizeHeading(Size size) {
    switch (size) {
      case Size.XXLarge:
        return 40;
      case Size.XLarge:
        return 36;
      case Size.Large:
        return 32;
      case Size.Medium:
        return 28;
      case Size.Small:
        return 24;
      default:
        return 20;
    }
  }

  double _mapSizeParagraph(Size size) {
    switch (size) {
      case Size.Large:
        return 18;
      case Size.Medium:
        return 16;
      case Size.Small:
        return 14;
      default:
        return 12;
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
