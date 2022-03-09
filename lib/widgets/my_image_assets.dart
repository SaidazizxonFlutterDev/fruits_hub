import '../core/components/export_packages.dart';

class MyImageAssets {
  static imageAsset(String t, double h, double w) {
    return Image.asset(
      t,
      height: getHeight(h),
      width: getWidth(w),
    );
  }
}