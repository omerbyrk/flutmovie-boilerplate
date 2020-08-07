import 'package:flutter/material.dart';

import '../../../core/widgets/widget_extension.dart';
import '../../../core/widgets/app_logo_image.dart';


class SplashPageLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(top: this.getHeight(context, percent: .05)),
      child: AppLogoImage(
        height: 200,
        width: 200,
      ),
    );
  }
}