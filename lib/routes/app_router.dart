// Flutter imports:
import 'package:b_stories/routes/app_router.gr.dart';
import 'package:b_stories/routes/app_router_path.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: "Screen|Page,Route")
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const MaterialRouteType();

  @override
  List<AutoRoute> get routes => [
    _buildAutoRouter(
      page: SplashRoute.page,
      path: AppRouterPath.splash,
      //initial: true,
    ),
    _buildAutoRouter(
      page: MainRoute.page,
      path: AppRouterPath.main,
      initial: true,
      children: [
        AutoRoute(page: HomeRoute.page, path: 'Trang chủ'),
        AutoRoute(page: SearchRoute.page, path: 'Tìm kiếm'),
        AutoRoute(page: FavouriteRoute.page, path: 'FavouriteRoute'),
        AutoRoute(page: ChildrenRoute.page, path: 'Cho trẻ'),
        AutoRoute(page: NewStoryRoute.page, path: 'Truyện mới'),
      ],
    ),
    _buildAutoRouter(
      page: ReadRoute.page,
      path: AppRouterPath.read,
      //initial: true,
    ),

    _buildAutoRouter(
      page: ReadingRoute.page,
      path: AppRouterPath.reading,
      //initial: true,
    ),
  ];

  CustomRoute<dynamic> _buildAutoRouter({
    required PageInfo page,
    String? path,
    List<AutoRoute> children = const [],
    bool initial = false,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transitionsBuilder,
  }) {
    return CustomRoute(
      page: page,
      path: path,
      initial: initial,
      children: children,
      transitionsBuilder: transitionsBuilder ?? TransitionsBuilders.slideLeft,
      durationInMilliseconds: 180,
      reverseDurationInMilliseconds: 180,
    );
  }

  @override
  List<AutoRouteGuard> get guards => [];
}
