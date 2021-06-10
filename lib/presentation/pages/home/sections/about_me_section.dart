import 'package:flutter/material.dart';
import 'package:nimbus/presentation/layout/adaptive.dart';
import 'package:nimbus/presentation/widgets/content_area.dart';
import 'package:nimbus/presentation/widgets/nimbus_info_section.dart';
import 'package:nimbus/presentation/widgets/spaces.dart';
import 'package:nimbus/values/values.dart';

class AboutMeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double screenWidth = widthOfScreen(context);
    double screenHeight = heightOfScreen(context);
    double contentAreaWidth = screenWidth * 0.5;
    double contentAreaHeight = screenHeight * 0.9;
    TextStyle? titleStyle =
        textTheme.headline1?.copyWith(color: AppColors.black);
    return Container(
      child: Row(
        children: [
          ContentArea(
            width: contentAreaWidth,
            height: contentAreaHeight,
            child: Stack(
              children: [
                Image.asset(
                  ImagePath.DEV_ABOUT_ME,
                  width: contentAreaWidth * 0.95,
                ),
                Positioned(
                  top: contentAreaWidth * 0.2,
                  left: contentAreaWidth * 0.2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringConst.HI,
                        style: titleStyle,
                      ),
                      Text(
                        StringConst.THERE,
                        style: titleStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ContentArea(
            width: contentAreaWidth,
            height: contentAreaHeight,
            child: Stack(
              children: [
                //positions blob on the far right of the section
                //based on the calculation only 10% of blob is showing
                Positioned(
                  top: contentAreaHeight * 0.2,
                  left: contentAreaWidth * 0.90,
                  child: Image.asset(
                    ImagePath.BLOB_BLACK,
                    height: contentAreaHeight * 0.30,
                    width: contentAreaWidth * 0.30,
                  ),
                ),
                //This container takes 85% of the space and leave 5% as spacing
                //between the blob and the content
                Container(
                  width: contentAreaWidth * 0.85,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            NimbusInfoSection(
                              sectionTitle: StringConst.ABOUT_ME,
                              title1: StringConst.CREATIVE_DESIGN,
                              title2: StringConst.HELP,
                              body: StringConst.ABOUT_ME_DESC,
                              child: Text(
                                StringConst.FOLLOW_ME,
                                style: textTheme.headline6
                                    ?.copyWith(color: AppColors.black),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
