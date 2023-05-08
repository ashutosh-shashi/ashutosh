import 'package:flutter/foundation.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';

import '../../configs/app_dimensions.dart';
import '../../configs/app_theme.dart';
import '../../configs/app_typography.dart';
import '../../configs/space.dart';
import '../../constants.dart';
import '../../utils/about_utils.dart';
import '../../utils/utils.dart';
import '../../widget/about_me_data.dart';
import '../../widget/custom_text_heading.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Container(
          margin: EdgeInsets.fromLTRB(
            //AppDimensions.normalize(10),
            width * 0.06,
            height * 0.066,
            //AppDimensions.normalize(25),
            0,
            0,
          ),
          // padding: Space.h,
          child: Column(
            children: [
              const CustomSectionHeading(
                text: '\nAbout Me',
              ),
              const CustomSectionSubHeading(
                text: 'A person with diverse experience',
              ),
              // Space.y1!,
              Image.asset(
                StaticUtils.mobilePhoto,
                height: height * 0.17,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Who am I?",
                  style: AppText.b2!.copyWith(
                    color: AppTheme.c!.primary,
                  ),
                ),
              ),
              Space.y1!,
              Text(
                AboutUtils.aboutMeHeadline,
                style: AppText.b2b!.copyWith(
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                AboutUtils.aboutMeDetail,
                style: AppText.l1!.copyWith(
                  height: 2,
                  letterSpacing: 1.1,
                  fontFamily: 'Montserrat',
                ),
              ),
              Space.y!,
              const AboutMeData(
                data: "Email",
                information: "as@ashutoshshashi.com",
              ),
              Space.y!,
              OutlinedButton(
                  child: const Text("Resume"),
                  onPressed: () {
                    kIsWeb
                        ? html.window.open(StaticUtils.resume, "pdf")
                        : openURL(StaticUtils.resume);
                  }),
              Space.y!,
              Divider(
                color: Colors.grey[800],
                thickness: AppDimensions.normalize(0.5),
              ),
              Space.y!,
            ],
          ),
        ),
      ),
    );
  }
}
