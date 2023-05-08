part of '../book.dart';

class _BookCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;
  final String amazonUrl;
  final String bnUrl;

  const _BookCard({
    Key? key,
    required this.serviceIcon,
    required this.serviceTitle,
    required this.serviceDescription,
    required this.amazonUrl,
    required this.bnUrl,
  }) : super(key: key);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_BookCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        cardKey.currentState!.toggleCard();
      },
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: FlipCard(
        flipOnTouch: kIsWeb ? false : true,
        key: cardKey,
        back: Container(
          width: AppDimensions.normalize(100),
          height: AppDimensions.normalize(130),
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
          decoration: BoxDecoration(
            color: appProvider.isDark ? Colors.grey[900] : Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: AppTheme.c!.primary!.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : [
                    BoxShadow(
                      color: Colors.black.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ],
          ),
          child: _BookCardBackWidget(
            serviceDesc: widget.serviceDescription,
            serviceTitle: widget.serviceTitle,
            amazonUrl: widget.amazonUrl,
            bnUrl: widget.bnUrl,
          ),
        ),
        front: Container(
          width: AppDimensions.normalize(80),
          height: AppDimensions.normalize(130),
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
          decoration: BoxDecoration(
            color: appProvider.isDark ? Colors.grey[900] : Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: AppTheme.c!.primary!.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : [
                    BoxShadow(
                      color: Colors.black.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.serviceIcon,
                // height: AppDimensions.normalize(85),
                height: AppDimensions.normalize(80),
              ),
              // Space.y1!,
              //  Text(
              //    widget.serviceTitle,
              //    textAlign: TextAlign.center,
              //  ),
            ],
          ),
        ),
      ),
    );
  }
}
