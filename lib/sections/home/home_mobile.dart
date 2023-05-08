import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../configs/app_dimensions.dart';
import '../../configs/app_theme.dart';
import '../../configs/app_typography.dart';
import '../../configs/space.dart';
import '../../utils/utils.dart';
import '../../widget/social_links.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.1,
            right: -AppDimensions.normalize(10),
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                StaticUtils.blackWhitePhoto,
                height: size.height * 0.75,
                //height: AppDimensions.normalize(size.height * 0.26),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              //AppDimensions.normalize(10),
              size.width * 0.06,
              size.height * 0.066,
              //AppDimensions.normalize(25),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HEY!",
                      style: AppText.b2!.copyWith(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Space.x!,
                    Image.asset(
                      StaticUtils.hi,
                      // height: AppDimensions.normalize(10),
                      height: size.width * 0.06,
                    ),
                    Text(
                      "  I am ",
                      style: AppText.b2!.copyWith(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
                Space.y!,
                Text(
                  "Ashutosh Shashi",
                  style: AppText.h3!.copyWith(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Space.y!,
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: AppTheme.c!.primary!,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          'Author',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          'Technology Leader',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          'co-founder of STEMars EdTech',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          'Entrepreneur',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          'Trainer',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          'Blogger',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                      ],
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
                Space.y!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
