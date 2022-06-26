import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oceanview/core/config/r.dart';

enum Menu {
  website,
  phone,
  library,
  setting,
  developer,
  error,
}

extension MenuExt on Menu {
  String get text {
    switch (this) {
      case Menu.website:
        return R.string.website;
      case Menu.phone:
        return R.string.phone;
      case Menu.library:
        return R.string.library;
      case Menu.setting:
        return R.string.setting;
      case Menu.developer:
        return R.string.developer;
      case Menu.error:
        return R.string.errorSend;
    }
  }

  SvgPicture get image {
    switch (this) {
      case Menu.website:
        return R.image.icon_library_fill
            .svgPictureSize(size: 28, color: R.color.black);
      // svg 에러났음..
      // return R.image.icon_school_web_fill.svgPictureSize(size: 28);
      // return R.image.icon_phone_book_fill.svgPictureSize(size: 28);

      case Menu.phone:
        return R.image.icon_library_fill
            .svgPictureSize(size: 28, color: R.color.black);
      case Menu.library:
        return R.image.icon_library_fill
            .svgPictureSize(size: 28, color: R.color.black);
      case Menu.setting:
        return R.image.icon_setting_fill
            .svgPictureSize(size: 28, color: R.color.black);
      case Menu.developer:
        return R.image.icon_developer_fill
            .svgPictureSize(size: 28, color: R.color.black);
      case Menu.error:
        return R.image.icon_error_send_fill
            .svgPictureSize(size: 28, color: R.color.black);
    }
  }

  LinearGradient get gradient {
    switch (this) {
      case Menu.website:
        return const LinearGradient(
          colors: [Color(0xFF1E7Aff), Color(0xFF009DF5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case Menu.phone:
        return const LinearGradient(
          colors: [
            Color(0xFF29B805),
            Color(0xFF67E107),
            Color(0xFF6CF500),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case Menu.library:
        return const LinearGradient(
          colors: [
            Color(0xFFFFCA42),
            Color(0xFFFFB13C),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case Menu.setting:
        return const LinearGradient(
          colors: [
            Color(0xFF585858),
            Color(0xFF8A8A8A),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case Menu.developer:
        return const LinearGradient(
          colors: [
            Color(0xFF9C1Eff),
            Color(0xFFAC85FF),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case Menu.error:
        return const LinearGradient(
          colors: [
            Color(0xFF1E7AFF),
            Color(0xFF009DF5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
    }
  }
}
