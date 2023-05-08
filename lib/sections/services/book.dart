import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../provider/app_provider.dart';
import '../../configs/app_dimensions.dart';
import '../../configs/app_theme.dart';
import '../../configs/app_typography.dart';
import '../../configs/space.dart';
import '../../constants.dart';
import '../../responsive/responsive.dart';
import '../../utils/book_utils.dart';
import '../../utils/utils.dart';
import '../../widget/custom_text_heading.dart';

part 'book_desktop.dart';
part 'book_mobile.dart';
part 'widgets/_book_card.dart';
part 'widgets/_services_card_back.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: BookMobile(),
      tablet: BookMobile(),
      desktop: BookDesktop(),
    );
  }
}
