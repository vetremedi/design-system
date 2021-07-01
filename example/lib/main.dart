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
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        children: [
          ...buttonWidgets,
        ],
      ),
    );
  }

  List<Widget> get textWidgets => [
        UIText.headingXXLargeStyle("Design System"),
        verticalSpaceMedium,
        UIText.headingXLargeStyle("Design System"),
        verticalSpaceMedium,
        UIText.headingLargeStyle("Design System"),
        verticalSpaceMedium,
        UIText.headingMediumStyle("Design System"),
        verticalSpaceMedium,
        UIText.headingSmallStyle("Design System"),
        verticalSpaceMedium,
        UIText.headingXSmallStyle("Design System"),
        verticalSpaceMedium,
        UIText.labelLargeStyle("Design System"),
        verticalSpaceMedium,
        UIText.labelMediumStyle("Design System"),
        verticalSpaceMedium,
        UIText.labelSmallStyle("Design System"),
        verticalSpaceMedium,
        UIText.labelTinyStyle("Design System"),
        verticalSpaceMedium,
        UIText.paragraphLargeStyle("Design System"),
        verticalSpaceMedium,
        UIText.paragraphMediumStyle("Design System"),
        verticalSpaceMedium,
        UIText.paragraphSmallStyle("Design System"),
        verticalSpaceMedium,
        UIText.paragraphTinyStyle("Design System"),
        verticalSpaceMedium,
        UIText.bodystyle("Design System"),
        verticalSpaceMedium,
      ];

  List<Widget> get buttonWidgets => [
        UIButton(
          title: "Get started",
          disabled: false,
          outline: false,
        ),
        verticalSpaceMedium,
        UIButton(
          title: "Get started",
          disabled: true,
          outline: false,
        ),
        verticalSpaceMedium,
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
        verticalSpaceMedium,
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
        verticalSpaceMedium,
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
        verticalSpaceMedium,
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
        verticalSpaceMedium,
        UIButton(
          title: "Get started",
          outline: true,
          disabled: false,
        ),
        verticalSpaceMedium,
        UIButton(
          title: "Get started",
          outline: true,
          disabled: true,
        ),
        verticalSpaceMedium,
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
        verticalSpaceMedium,
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
        verticalSpaceMedium,
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
        verticalSpaceMedium,
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
        verticalSpaceMedium,

        //teritary buttons
        UIButton(
          title: "Get started",
          outline: true,
          disabled: false,
          textBtn: true,
        ),
        verticalSpaceMedium,
        UIButton(
          title: "Get started",
          outline: true,
          textBtn: true,
          disabled: true,
        ),
        verticalSpaceMedium,
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
        verticalSpaceMedium,
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
        verticalSpaceMedium,
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
        verticalSpaceMedium,
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
        verticalSpaceMedium,
      ];
}
