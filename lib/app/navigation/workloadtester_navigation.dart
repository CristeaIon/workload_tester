import 'package:auto_route/auto_route.dart';

import '../../home/home_screen.dart';

part 'workloadtester_navigation.gr.dart';

@AutoRouterConfig()
class WorkloadTesterNavigator extends _$WorkloadTesterNavigator {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, page: HomeRoute.page)
  ];
}
