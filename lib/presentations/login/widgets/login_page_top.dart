import 'package:covid19_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/index.dart';

class LoginPageTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WavyBottomCLipper(),
      child: Container(
        height: this.getHeight(context, percent: .45),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              AppColors.red[300],
              AppColors.red[900],
              AppColors.red[600]
            ],
          ),
        ),
        child: Center(
          child: AppFadeAnimation(
            duration: Duration(milliseconds: 600),
            child: AppLogoImage(
              width: 200,
              height: 200,
              inAnimated: false,
            ),
          ),
        ),
      ),
    );
  }
}