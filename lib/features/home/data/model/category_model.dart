import 'package:b_stories/core/constants/app_svgs.dart';

class CategoryModel {
  String? icon;
  String? title;
  CategoryModel();
}

CategoryModel fairyTale = CategoryModel()
  ..icon = AppSvgs.fairyTale
  ..title = 'Cổ tích';

CategoryModel science = CategoryModel()
  ..icon = AppSvgs.science
  ..title = 'Khoa học';

CategoryModel joke = CategoryModel()
  ..icon = AppSvgs.funny
  ..title = 'Truyện cười';

CategoryModel legend = CategoryModel()
  ..icon = AppSvgs.legend
  ..title = 'Truyền thuyết';
