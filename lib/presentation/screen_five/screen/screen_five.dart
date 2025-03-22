import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:test_for_dot_programmers/core/theme/app_color.dart';
import 'package:test_for_dot_programmers/core/utils/image_path.dart';
import 'package:test_for_dot_programmers/presentation/widgets/custom_gradient.dart';
import 'package:test_for_dot_programmers/presentation/widgets/custom_image_builder.dart';
import 'package:test_for_dot_programmers/presentation/widgets/custom_text.dart';
import 'package:test_for_dot_programmers/presentation/widgets/custom_wave_clipper.dart';

class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 45,
            ),
            Center(
              child: CustomImageWidget(
                imagePath: ImageConstant.logosvg,
                gradient: customLinearGradient(),
              ),
            ),
            Center(
              child: CustomText(
                text: 'Efectivo',
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: AppColor.titleWord,
              ),
            ),
            Spacer(),
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(gradient: customLinearGradient()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(text: 'Welcome',color: Colors.white,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
