import 'package:get/get.dart';
import 'package:preferences_broadcasts/Themes/theme.dart';

class ThemeInjectcion{
  static void init(){
    Get.put<ThemeController>(ThemeController(), permanent: true);
  }
}