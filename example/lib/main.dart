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
    final list = [
      ...textWidgets,
      ...buttonWidgets,
    ];
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
          size: TxtSize.XXLarge,
          color: TextSecondaryColor,
        ),
        UIText.heading(
          "Heading - XLarge",
          size: TxtSize.XLarge,
          // color: TextPrimaryColor, no need default color
        ),
        UIText.heading(
          "Heading - Large",
          size: TxtSize.Large,
        ),
        UIText.heading(
          "Heading - Medium",
          size: TxtSize.Medium,
        ),
        UIText.heading(
          "Heading - Small",
          size: TxtSize.Small,
        ),
        UIText.heading(
          "Heading - Tiny",
          size: TxtSize.Tiny,
        ),
        UIText.label(
          "Label - Large",
          size: TxtSize.Large,
          color: TextSecondaryColor,
        ),
        UIText.label(
          "Label - Medium",
          size: TxtSize.Medium,
        ),
        UIText.label(
          "Label - Small",
          size: TxtSize.Small,
        ),
        UIText.label(
          "Label - Tiny",
          size: TxtSize.Tiny,
          color: TextPrimaryColor,
        ),
        UIText.paragraph(
          "Paragraph - Large",
          size: TxtSize.Large,
          color: TextSecondaryColor,
        ),
        UIText.paragraph(
          "Paragraph - Medium",
          size: TxtSize.Medium,
        ),
        UIText.paragraph(
          "Paragraph - Small",
          size: TxtSize.Small,
        ),
        UIText.paragraph(
          "Paragraph - Tiny",
          size: TxtSize.Tiny,
        ),
      ];

  List<Widget> get buttonWidgets => [
        UIButton.primary(
          "Get Started",
          onTap: () {},
        ),
        UIButton.primary(
          "Get Started",
          disabled: true,
        ),
        UIButton.secondary(
          "Get Started",
          onTap: () {},
        ),
        UIButton.tertiary(
          "Get Started",
          onTap: () {},
        ),
        UIButton.primary(
          "Get Started",
          onTap: () {},
          leading: true,
          leadingIcon: Icons.camera,
        ),
        UIButton.primary(
          "Get Started",
          disabled: true,
          leading: true,
          leadingIcon: Icons.camera,
        ),
        UIButton.secondary(
          "Get Started",
          onTap: () {},
          leading: true,
          leadingIcon: Icons.camera,
        ),
        UIButton.tertiary(
          "Get Started",
          onTap: () {},
          leading: true,
          leadingIcon: Icons.camera,
        ),
        // color variants
        UIButton.primary(
          "Get Started",
          onTap: () {},
          appType: AppType.Pharmacy,
        ),
        UIButton.primary(
          "Get Started",
          onTap: () {},
          appType: AppType.Pharmacy,
          disabled: true,
        ),
        UIButton.secondary(
          "Get Started",
          appType: AppType.Pharmacy,
          onTap: () {},
        ),
        UIButton.tertiary(
          "Get Started",
          appType: AppType.Pharmacy,
          onTap: () {},
        ),
        UIButton.primary(
          "Get Started",
          onTap: () {},
          appType: AppType.Pharmacy,
          leading: true,
          leadingIcon: Icons.camera,
        ),
        UIButton.primary(
          "Get Started",
          disabled: true,
          appType: AppType.Pharmacy,
          leading: true,
          leadingIcon: Icons.camera,
        ),
        UIButton.secondary(
          "Get Started",
          onTap: () {},
          appType: AppType.Pharmacy,
          leading: true,
          leadingIcon: Icons.camera,
        ),
        UIButton.tertiary(
          "Get Started",
          appType: AppType.Pharmacy,
          onTap: () {},
          leading: true,
          leadingIcon: Icons.camera,
        ),

         UIButton.primary(
          "Get Started",
          onTap: () {},
          appType: AppType.Delivery,
        ),
        UIButton.primary(
          "Get Started",
          onTap: () {},
          appType: AppType.Delivery,
          disabled: true,
        ),
        UIButton.secondary(
          "Get Started",
          appType: AppType.Delivery,
          onTap: () {},
        ),
        UIButton.tertiary(
          "Get Started",
          appType: AppType.Delivery,
          onTap: () {},
        ),
        UIButton.primary(
          "Get Started",
          onTap: () {},
          appType: AppType.Delivery,
          leading: true,
          leadingIcon: Icons.camera,
        ),
        UIButton.primary(
          "Get Started",
          onTap: () {},
          disabled: true,
          appType: AppType.Delivery,
          leading: true,
          leadingIcon: Icons.camera,
        ),
        UIButton.secondary(
          "Get Started",
          onTap: () {},
          appType: AppType.Delivery,
          leading: true,
          leadingIcon: Icons.camera,
        ),
        UIButton.tertiary(
          "Get Started",
          appType: AppType.Delivery,
          onTap: () {},
          leading: true,
          leadingIcon: Icons.camera,
        ),
      ];
}
