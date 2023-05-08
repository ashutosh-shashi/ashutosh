part of '../book.dart';

class _BookCardBackWidget extends StatelessWidget {
  const _BookCardBackWidget(
      {Key? key,
      required this.serviceDesc,
      required this.serviceTitle,
      required this.amazonUrl,
      required this.bnUrl})
      : super(key: key);

  final String serviceDesc;
  final String serviceTitle;
  final String amazonUrl;
  final String bnUrl;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          serviceDesc,
          style: AppText.l1,
        ),
        Divider(
          color: appProvider.isDark ? Colors.white : Colors.black38,
        ),
        SizedBox(
          height: AppDimensions.normalize(14),
          width: AppDimensions.normalize(60),
          child: MaterialButton(
            color: AppTheme.c!.primary,
            onPressed: () => showDialog(
                context: context,
                builder: (contecxt) => AlertDialog(
                      title: Text(
                        "Buy Now!",
                        style: AppText.b2b,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Back"),
                        )
                      ],
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            height: 40.0,
                            onPressed: () => openURL(
                              amazonUrl,
                            ),
                            color: const Color(0xff34CB62),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  FontAwesomeIcons.amazon,
                                  color: Colors.white,
                                ),
                                Space.x!,
                                Text(
                                  'Amazon',
                                  style: AppText.l1!.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Space.y1!,
                          MaterialButton(
                            height: 40.0,
                            onPressed: () => openURL(
                              bnUrl,
                            ),
                            color: const Color(0xff13A800),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  StaticUtils.bn,
                                  height: AppDimensions.normalize(10),
                                ),
                                Space.x!,
                                Text(
                                  'Barnes & Noble',
                                  style: AppText.l1!.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
            child: Text(
              'Buy Now!',
              style: AppText.b2!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
