part of 'book.dart';

class BookMobile extends StatelessWidget {
  const BookMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(
        //AppDimensions.normalize(10),
        width * 0.06,
        height * 0.066,
        //AppDimensions.normalize(25),
        0,
        0,
      ),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nPublished books',
          ),
          const CustomSectionSubHeading(
            text: 'My published books in store near you\n\n',
          ),
          Space.y!,
          CarouselSlider.builder(
            itemCount: BookUtils.bookTitles.length,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: _BookCard(
                serviceIcon: BookUtils.bookIcons[i],
                serviceTitle: BookUtils.bookTitles[i],
                serviceDescription: BookUtils.bookDescription[i],
                amazonUrl: BookUtils.bookAmazon[i],
                bnUrl: BookUtils.bookBn[i],
              ),
            ),
            options: CarouselOptions(
              viewportFraction: 0.75,
              height: width < 450 ? height * 0.4 : height * 0.4,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: false,
            ),
          )
        ],
      ),
    );
  }
}
