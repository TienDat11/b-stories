import 'package:b_stories/core/constants/app_svgs.dart';
import 'package:b_stories/features/main/presentation/widgets/bottom_nav_item_widget.dart';
import 'package:b_stories/features/main/presentation/widgets/bottom_navigation_bar_widget.dart';
import 'package:b_stories/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  final List<PageRouteInfo<dynamic>>? menuBarRoutes = const [
    NotificationRoute(),
    HomeRoute(),
    SearchRoute(),
    AddStoryRoute(),
    FavouriteRoute(),
  ];

  final List<BottomNavItem> menuBar = [
    BottomNavItem(iconPath: AppSvgs.home, label: 'Home'),
    BottomNavItem(iconPath: AppSvgs.search, label: 'Tìm kiếm'),
    BottomNavItem(iconPath: AppSvgs.layer, label: ''),
    BottomNavItem(iconPath: AppSvgs.user, label: 'Cho trẻ'),
    BottomNavItem(iconPath: AppSvgs.mynauiBook, label: 'Truyện mới'),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (context, child, animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        debugPrint('Current route: ${tabsRouter.current.name}');
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBarWidget(
            items: menuBar,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}
