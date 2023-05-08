import 'package:ashutosh/sections/about/about_mobile.dart';
import 'package:ashutosh/sections/contact/contact_mobile.dart';
import 'package:ashutosh/sections/portfolio/portfolio_mobile.dart';
import 'package:ashutosh/sections/services/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../configs/app_dimensions.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  scroll(int index) {
    double offset = index == 1
        ? 270
        : index == 2
            ? 255
            : index == 3
                ? 250
                : 245;
    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollMobile1(int index, BuildContext context) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AboutMobile()),
      );
    }
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BookMobile()),
      );
    }
    if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PortfolioMobileTab()),
      );
    }
    if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ContactMobileTab()),
      );
    }
  }

  scrollMobile(int index, double height, double width, double pixelDensity,
      double aspectRatio) {
    print('height for scroll: $aspectRatio');
    double aspect = 0.53;
    double offset = index == 1
        ? height * index * (945 / height) * (430 / width) * (3 / pixelDensity)
        : index == 2
            ? height *
                index *
                (980 / height) *
                (430 / width) *
                (3 / pixelDensity)
            : index == 3
                ? height *
                    index *
                    (850 / height) *
                    (430 / width) *
                    (3 / pixelDensity)
                : height *
                    index *
                    (820 / height) *
                    (430 / width) *
                    (3 / pixelDensity);
    controller.animateTo(
      offset,
      // AppDimensions.normalize(
      //   offset * index.toDouble(),
      //  ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
