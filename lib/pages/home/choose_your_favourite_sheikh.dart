import 'package:flutter/material.dart';
import 'package:untitled4/core/language/app_texts.dart';

import '../../widgets/home_widget/custom_list_wheel_scroll_view.dart';
import 'cover_home.dart';

class ChooseYourFavouriteSheikh extends StatelessWidget {
  const ChooseYourFavouriteSheikh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoverHomePage(
      sizeChild: MediaQuery.of(context).size.height * 0.470,
      size2: MediaQuery.of(context).size.height * 0.400,
      title: AppTextArabic.chooseYourFavoriteSheikh,
      child: CustomListWheelScrollView(
        items: [],
        onSelectedItemChanged: (int) {},
      ),
    );
  }
}
