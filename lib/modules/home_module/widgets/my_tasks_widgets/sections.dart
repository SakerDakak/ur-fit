import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/constants.dart';

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) => _SectionCard(
        title: 'التمارين',
        onTap: () {},
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    required this.title,
    required this.onTap,
  });

  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(kBorderRadius),
          border: Border.all(color: AppColors.strockColor),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Stack(
          children: [
            // workout image
            Positioned(
              top: -10,
              bottom: -10,
              child: _buildImageCircleAvatar(context),
            ),

            // workout title and start button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 35,
              ),
              child: Row(
                children: [
                  const SizedBox(width: 88),

                  // workout title
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyle.bold_16.copyWith(shadows: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ]),
                    ),
                  ),

                  // start button
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                    child: Text(
                      'ابدا',
                      style: CustomTextStyle.bold_14,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack _buildImageCircleAvatar(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 55,
          backgroundColor: Color(0xff484848),
        ),
        CircleAvatar(
          radius: 45,
          backgroundColor: Color(0xff575757),
        ),
        CircleAvatar(
          radius: 35,
          backgroundColor: Theme.of(context).colorScheme.primary,
          backgroundImage: CachedNetworkImageProvider(
            'https://s3-alpha-sig.figma.com/img/f06c/51a6/6c6ee43165334dccd6f0dff1e2a5500d?Expires=1734307200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NtqQfNCZBntSo4cFjzuL~ildCNgKeBQkV2KDClLYuEv-uZJ1DAGeFVlo92fN~ek3q16harFjkgRFAZpCs7FGrEali9gxGAiBNNb~tpvsTHp5Zw94GuIR9MkzsAwFYD3LIA~SASV9POMyM~xBIVaWQQcUfR~-YcvcXHYBtaHTPCFiac64fKrNg3vU-psF9MufTjIhdAaqib-n5qp2Qg4JW43~AqR2arjrm0lWoTcJA27-6wqumuTpm8GNYV4PbeAg6iHX-RPmg82rq56qsSXnCJPO4ctDXDwOrBfTdArulUTtS5FmR7aOl3swRyd36SAMyhFUV2iBGYl68oJXTB4Etg__',
          ),
        ),
      ],
    );
  }
}
