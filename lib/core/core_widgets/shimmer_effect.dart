import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:untitled4/core/core_widgets/vertical_spacing.dart';

import '../theme/app_color/app_color.dart';
import 'custom_container_widget.dart';
import 'horizontal_spacing.dart';

class ArticlesShimmerEffectWidget extends StatelessWidget {
  const ArticlesShimmerEffectWidget({
    required this.size,
    required this.baseShimmerColor,
    required this.highlightShimmerColor,
    super.key,
  });

  final Size size;
  final Color baseShimmerColor;
  final Color highlightShimmerColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.18,
            margin: const EdgeInsets.all(8),
            width: size.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColor.blackColor.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  blurStyle: BlurStyle.outer,
                  offset: const Offset(0, 1),
                )
              ],
              gradient: LinearGradient(
                  stops: const [0.5, 1],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.primary
                  ]),
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(12),
            child: Shimmer.fromColors(
              baseColor: baseShimmerColor,
              highlightColor: highlightShimmerColor,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CustomContainer(
                      height: size.height * 0.15,
                      width: size.width * 0.3,
                    ),
                  ),
                  const HorizontalSpacing(10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomContainer(
                          height: size.height * 0.05,
                          width: double.infinity,
                        ),
                        const VerticalSpacing(12),
                        Align(
                          alignment: Alignment.topRight,
                          child: CustomContainer(
                            height: size.height * 0.025,
                            width: size.width * 0.4,
                          ),
                        ),
                        const VerticalSpacing(12),
                        FittedBox(
                          child: Row(
                            children: [
                              ClipOval(
                                child: CustomContainer(
                                  height: size.height * 0.030,
                                  width: size.width * 0.060,
                                ),
                              ),
                              const HorizontalSpacing(10),
                              CustomContainer(
                                height: size.height * 0.025,
                                width: size.width * 0.4,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
