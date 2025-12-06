
class Assets {
  static const String _basePath = 'assets';
  static const String _imagePath = '$_basePath/images';

  // Images
  // static const String appLogo = '$_imagePath/app_logo.png';
  static const String placeholder = '$_imagePath/default-fallback-image.png';

  static String getCategoryAsset(String categoryName, String theme) {
    return '$_imagePath/${categoryName}_$theme.png';
  }
}