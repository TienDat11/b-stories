import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/banner/banner_widget.dart';
import 'package:b_stories/core/components/card/card_widget.dart';
import 'package:b_stories/core/components/dialog/app_dialog%20copy.dart';
import 'package:b_stories/core/components/section_header/section_header_widget.dart';
import 'package:b_stories/core/constants/app_images.dart';
import 'package:b_stories/core/components/base/base_view.dart';
import 'package:b_stories/features/home/presentation/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeBloc, HomeState>(
      bloc: (ctx) => HomeBloc(), // khởi tạo bloc
      loadingSelector: (_) => false,

      body: SingleChildScrollView(
        // padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            BannerWidget(),
            SectionHeaderWidget(title: 'Truyện tranh', onTap: () {}),

            Row(
              children: [
                CustomCardWidget(
                  onTap: () {
                    AppDialog.showFilter(
                      context,
                      // // iconPath: AppSvgs.mdiCarConnectedIcSvg,
                      // title: 'Cuốc xe đang thực hiện',
                    );
                  },
                  imagePath: AppImages.background,
                  title: 'Hello chsshshshshshshshshsh',
                ),
                const SizedBox(width: 8),
                CustomCardWidget(
                  onTap: () {
                    AppDialog.showReading(
                      context,
                      // // iconPath: AppSvgs.mdiCarConnectedIcSvg,
                      // title: 'Cuốc xe đang thực hiện',
                    );
                  },
                  imagePath: AppImages.test,
                  title: 'chsshshshshshshshshsh',
                ),
              ],
            ),
            SectionHeaderWidget(title: 'Truyện vui', onTap: () {}),
            Row(
              children: [
                CustomCardWidget(
                  onTap: () {
                    AppDialog.showFilter(
                      context,
                      // // iconPath: AppSvgs.mdiCarConnectedIcSvg,
                      // title: 'Cuốc xe đang thực hiện',
                    );
                  },
                  imagePath: AppImages.background,
                  title: 'Hello chsshshshshshshshshsh',
                ),
                const SizedBox(width: 8),
                CustomCardWidget(
                  onTap: () {
                    AppDialog.showSummary(
                      context,
                      // // iconPath: AppSvgs.mdiCarConnectedIcSvg,
                      // title: 'Cuốc xe đang thực hiện',
                    );
                  },
                  imagePath: AppImages.test,
                  title: 'chsshshshshshshshshsh',
                ),
              ],
            ),
            SectionHeaderWidget(title: 'Cổ tích', onTap: () {}),
            Row(
              children: [
                CustomCardWidget(
                  onTap: () {
                    AppDialog.showFilter(
                      context,
                      // // iconPath: AppSvgs.mdiCarConnectedIcSvg,
                      // title: 'Cuốc xe đang thực hiện',
                    );
                  },
                  imagePath: AppImages.background,
                  title: 'Hello chsshshshshshshshshsh',
                ),
                const SizedBox(width: 8),
                CustomCardWidget(
                  onTap: () {
                    AppDialog.showSummary(
                      context,
                      // // iconPath: AppSvgs.mdiCarConnectedIcSvg,
                      // title: 'Cuốc xe đang thực hiện',
                    );
                  },
                  imagePath: AppImages.test,
                  title: 'chsshshshshshshshshsh',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
