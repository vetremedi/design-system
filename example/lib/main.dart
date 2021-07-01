import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UIDesignView(),
    );
  }
}

class UIDesignView extends StatelessWidget {
  const UIDesignView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = [...textWidgets, ...buttonWidgets];
    return Scaffold(
      body: ListView.separated(
        itemCount: textWidgets.length + buttonWidgets.length,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        itemBuilder: (BuildContext context, int index) => list[index],
        separatorBuilder: (BuildContext context, int index) =>
            verticalSpaceMedium,
      ),
    );
  }

  List<Widget> get textWidgets => [
        UIText.heading(
          "Heading - XXLarge",
          size: Size.XXLarge,
        ),
        UIText.heading(
          "Heading - XLarge",
          size: Size.XLarge,
        ),
        UIText.heading(
          "Heading - Large",
          size: Size.Large,
        ),
        UIText.heading(
          "Heading - Medium",
          size: Size.Medium,
        ),
        UIText.heading(
          "Heading - Small",
          size: Size.Small,
        ),
        UIText.heading(
          "Heading - Tiny",
          size: Size.Tiny,
        ),
        UIText.label(
          "Label - Large",
          size: Size.Large,
        ),
        UIText.label(
          "Label - Medium",
          size: Size.Medium,
        ),
        UIText.label(
          "Label - Small",
          size: Size.Small,
        ),
        UIText.label(
          "Label - Tiny",
          size: Size.Tiny,
        ),
        UIText.paragraph(
          "Paragraph - Large",
          size: Size.Large,
        ),
        UIText.paragraph(
          "Paragraph - Medium",
          size: Size.Medium,
        ),
        UIText.paragraph(
          "Paragraph - Small",
          size: Size.Small,
        ),
        UIText.paragraph(
          "Paragraph - Tiny",
          size: Size.Tiny,
        ),
      ];

  List<Widget> get buttonWidgets => [
        UIButton(
          title: "Get started",
          disabled: false,
          outline: false,
        ),
        UIButton(
          title: "Get started",
          disabled: true,
          outline: false,
        ),
        UIButton(
          title: "Get started",
          leading: Icon(
            Icons.favorite_border,
            color: BackgroundColor,
            size: 18,
          ),
          disabled: false,
          outline: false,
        ),
        UIButton(
          title: "Get started",
          leading: Icon(
            Icons.favorite_border,
            color: TextSecondryColor,
            size: 18,
          ),
          disabled: true,
          outline: false,
        ),
        UIButton(
          title: "Label",
          disabled: false,
          outline: false,
          trailing: true,
          tralingIcon: Icon(
            Icons.arrow_forward,
            color: BackgroundColor,
            size: 18,
          ),
        ),
        UIButton(
          title: "Label",
          disabled: true,
          outline: false,
          trailing: true,
          tralingIcon: Icon(
            Icons.arrow_forward,
            color: TextSecondryColor,
            size: 18,
          ),
        ),
        UIButton(
          title: "Get started",
          outline: true,
          disabled: false,
        ),
        UIButton(
          title: "Get started",
          outline: true,
          disabled: true,
        ),
        UIButton(
          title: "Get started",
          leading: Icon(
            Icons.favorite_border,
            color: CorePrimary,
            size: 18,
          ),
          disabled: false,
          outline: true,
        ),
        UIButton(
          title: "Get started",
          leading: Icon(
            Icons.favorite_border,
            color: TextSecondryColor,
            size: 18,
          ),
          disabled: true,
          outline: true,
        ),
        UIButton(
          title: "Label",
          disabled: false,
          outline: true,
          trailing: true,
          tralingIcon: Icon(
            Icons.arrow_forward,
            color: TextSecondryColor,
            size: 18,
          ),
        ),
        UIButton(
          title: "Label",
          disabled: true,
          outline: true,
          trailing: true,
          tralingIcon: Icon(
            Icons.arrow_forward,
            color: TextSecondryColor,
            size: 18,
          ),
        ),

        //teritary buttons
        UIButton(
          title: "Get started",
          outline: true,
          disabled: false,
          textBtn: true,
        ),
        UIButton(
          title: "Get started",
          outline: true,
          textBtn: true,
          disabled: true,
        ),
        UIButton(
          title: "Get started",
          leading: Icon(
            Icons.favorite_border,
            color: CorePrimary,
            size: 18,
          ),
          disabled: false,
          outline: true,
          textBtn: true,
        ),
        UIButton(
          title: "Get started",
          leading: Icon(
            Icons.favorite_border,
            color: TextSecondryColor,
            size: 18,
          ),
          disabled: true,
          outline: true,
          textBtn: true,
        ),
        UIButton(
          title: "Label",
          disabled: false,
          outline: true,
          trailing: true,
          textBtn: true,
          tralingIcon: Icon(
            Icons.arrow_forward,
            color: TextSecondryColor,
            size: 18,
          ),
        ),
        UIButton(
          title: "Label",
          disabled: true,
          outline: true,
          trailing: true,
          textBtn: true,
          tralingIcon: Icon(
            Icons.arrow_forward,
            color: TextSecondryColor,
            size: 18,
          ),
        ),
      ];
}
