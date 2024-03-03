import 'package:auto_route/auto_route.dart';

import '../../home/home.dart';
import '../../project/project.dart';

part 'workloadtester_navigation.gr.dart';

@AutoRouterConfig()
class WorkloadTesterNavigator extends _$WorkloadTesterNavigator {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              page: NewProjectRoute.page,
            )
          ],
        ),
      ];
}
