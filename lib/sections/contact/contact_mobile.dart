import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../configs/space.dart';
import '../../utils/contact_utils.dart';
import '../../widget/custom_text_heading.dart';
import '../../widget/project_card.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Space.y2!,
        const CustomSectionHeading(
          text: "\nGet in Touch",
        ),
        const CustomSectionSubHeading(
          text: "Let's work together \n\n",
        ),
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ProjectCard(
              projectIconData: ContactUtils.contactIcon[i],
              projectTitle: ContactUtils.titles[i],
              projectDescription: ContactUtils.details[i],
              projectLink: ContactUtils.links[i],
            ),
          ),
          options: CarouselOptions(
            height: height * 0.43,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
        Space.y2!,
      ],
    );
  }
}
