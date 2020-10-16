import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeColors {
  static getFirstColor(BuildContext context) {
    return Theme.of(context).primaryColor;
  }

  static getSecondColor(BuildContext context) {
    return Theme.of(context).backgroundColor;
  }

  static getTextColor(BuildContext context) {
    return Theme.of(context).highlightColor;
  }

  static getItemColor(BuildContext context) {
    return Theme.of(context).canvasColor;
  }

  static getSelectionColor(BuildContext context) {
    return Theme.of(context).cardColor;
  }

  static getProgressColor(BuildContext context) {
    return Theme.of(context).buttonColor;
  }

  static getProgressBackgroundColor(BuildContext context) {
    return Theme.of(context).splashColor;
  }

  static getButtonColor(BuildContext context) {
    return Theme.of(context).accentColor;
  }


}
