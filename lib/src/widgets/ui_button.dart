import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';

// enum BtnSize { Default, Small }
enum CTAType { Primary, Secondary, Tertiary }
enum AppType { Core, Pharmacy, Delivery }

class UIButton extends StatelessWidget {
  final bool disabled;
  final String title;
  final IconData? leadingIcon;
  final void Function()? onTap;
  final CTAType ctaType;
  final AppType appType;

  const UIButton({
    Key? key,
    required this.title,
    this.disabled = false,
    this.leadingIcon,
    this.onTap,
    this.appType = AppType.Core,
    this.ctaType = CTAType.Primary,
  }) : super(key: key);

  const UIButton.primary(
    this.title, {
    this.disabled = false,
    this.leadingIcon,
    this.onTap,
    this.appType = AppType.Core,
  }) : ctaType = CTAType.Primary;

  const UIButton.secondary(
    this.title, {
    this.disabled = false,
    this.leadingIcon,
    this.onTap,
    this.appType = AppType.Core,
  }) : ctaType = CTAType.Secondary;

  const UIButton.tertiary(
    this.title, {
    this.disabled = false,
    this.leadingIcon,
    this.onTap,
    this.appType = AppType.Core,
  }) : ctaType = CTAType.Tertiary;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: !disabled ? onTap : null,
      label: Text(
        title,
        style: TextStyle(
            fontSize: 16.0,
            fontFamily: 'AppFont',
            color: disabled
                ? TextSecondaryColor
                : ctaType == CTAType.Primary
                    ? BackgroundColor
                    : _mapButtonColor(appType)),
      ),
      style: disabled
          ? ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.only(top: 14.0, bottom: 14.0)),
              elevation: MaterialStateProperty.all<double>(0.0),
              backgroundColor: MaterialStateProperty.all<Color>(
                  ctaType == CTAType.Primary ? DisabledColor : BackgroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  side: ctaType == CTAType.Secondary
                      ? BorderSide(color: DisabledColor)
                      : BorderSide(color: Colors.transparent),
                ),
              ),
            )
          : ButtonStyle(
              shadowColor: MaterialStateProperty.all<Color>(Color(0x62606170)),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.only(top: 14.0, bottom: 14.0)),
              elevation: MaterialStateProperty.all<double>(0.0),
              overlayColor: MaterialStateProperty.resolveWith(
                (states) {
                  return states.contains(MaterialState.pressed)
                      ? _mapButtonOverlayColor(appType, ctaType)
                      : null;
                },
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                  ctaType != CTAType.Primary
                      ? BackgroundColor
                      : _mapButtonColor(appType)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      side: ctaType == CTAType.Secondary
                          ? BorderSide(color: _mapButtonColor(appType))
                          : BorderSide(color: Colors.transparent)))),
      icon: leadingIcon != null
          ? Icon(
              leadingIcon,
              size: 20.0,
              color: disabled
                  ? TextSecondaryColor
                  : ctaType == CTAType.Primary
                      ? BackgroundColor
                      : _mapButtonColor(appType),
            )
          : Container(),
    );
  }
}

Color _mapButtonColor(AppType appType) {
  switch (appType) {
    case AppType.Delivery:
      return DeliveryPrimary;
    case AppType.Pharmacy:
      return PharmacyPrimary;
    default:
      return CorePrimary;
  }
}

Color _mapButtonOverlayColor(AppType appType, CTAType ctaType) {
  switch (appType) {
    case AppType.Delivery:
      return ctaType == CTAType.Primary
          ? Colors.white10
          : DeliveryPrimary.withOpacity(.2);
    case AppType.Pharmacy:
      return ctaType == CTAType.Primary
          ? Colors.white10
          : PharmacyPrimary.withOpacity(.2);
    default:
      return ctaType == CTAType.Primary
          ? Colors.white10
          : CorePrimary.withOpacity(.2);
  }
}
