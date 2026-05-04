import 'package:flutter/cupertino.dart';
import 'package:i_store_app/utils/constants/sized.dart';

class ISpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: ISizes.appBarHeight,
    right: ISizes.defaultSpace,
    left: ISizes.defaultSpace,
    bottom: ISizes.defaultSpace,
  );
}
