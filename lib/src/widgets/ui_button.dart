import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

// enum BtnSize { Default, Small }
enum CTAType { Primary, Secondary, Tertiary }
enum AppType { Core, Pharmacy, Delivery, Doctor }

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
                ? kTextSecondaryLightColor
                : ctaType == CTAType.Primary
                    ? kBackgroundColor
                    : _mapButtonColor(appType)),
      ),
      style: disabled
          ? ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.only(top: 14.0, bottom: 14.0)),
              elevation: MaterialStateProperty.all<double>(0.0),
              backgroundColor: MaterialStateProperty.all<Color>(
                  ctaType == CTAType.Primary
                      ? kDisabledColor
                      : kBackgroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  side: ctaType == CTAType.Secondary
                      ? BorderSide(color: kDisabledColor)
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
                      ? kBackgroundColor
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
                  ? kTextSecondaryLightColor
                  : ctaType == CTAType.Primary
                      ? kBackgroundColor
                      : _mapButtonColor(appType),
            )
          : Container(),
    );
  }
}

Color _mapButtonColor(AppType appType) {
  switch (appType) {
    case AppType.Delivery:
      return kDeliveryColor;
    case AppType.Doctor:
      return kDoctorColor;
    case AppType.Pharmacy:
      return kPharmacyColor;
    default:
      return kCoreColor;
  }
}

Color _mapButtonOverlayColor(AppType appType, CTAType ctaType) {
  switch (appType) {
    case AppType.Delivery:
      return ctaType == CTAType.Primary
          ? Colors.white10
          : kDeliveryColor.withOpacity(.2);
    case AppType.Doctor:
      return ctaType == CTAType.Primary
          ? Colors.white10
          : kDoctorColor.withOpacity(.2);
    case AppType.Pharmacy:
      return ctaType == CTAType.Primary
          ? Colors.white10
          : kPharmacyColor.withOpacity(.2);
    default:
      return ctaType == CTAType.Primary
          ? Colors.white10
          : kCoreColor.withOpacity(.2);
  }
}
