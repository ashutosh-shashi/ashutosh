part of 'book.dart';

class BookDesktop extends StatefulWidget {
  const BookDesktop({Key? key}) : super(key: key);

  @override
  BookDesktopState createState() => BookDesktopState();
}

class BookDesktopState extends State<BookDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.hf(4),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\npublished books',
          ),
          const CustomSectionSubHeading(
            text: 'My published books in store near you\n\n',
          ),
          Space.y!,
          /*CarouselSlider.builder(
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
              viewportFraction: 0.65,
              height: width < 450 ? height * 0.4 : height * 0.4,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: false,
            ),
          )*/
          Wrap(
            spacing: width * 0.02,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: BookUtils.bookIcons
                .asMap()
                .entries
                .map(
                  (e) => _BookCard(
                    serviceIcon: BookUtils.bookIcons[e.key],
                    serviceTitle: BookUtils.bookTitles[e.key],
                    serviceDescription: BookUtils.bookDescription[e.key],
                    amazonUrl: BookUtils.bookAmazon[e.key],
                    bnUrl: BookUtils.bookBn[e.key],
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
