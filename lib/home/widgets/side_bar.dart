import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:workload_tester/app/navigation/workloadtester_navigation.dart';

import 'side_bar_button.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.amber,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SideBarButton(
              title: 'New Project',
              onPressed: () {
                AutoRouter.of(context).push(const NewProjectRoute());
              },
            ),
          ),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return SideBarButton(title: 'Project $index');
            },
          )
        ],
      ),
    );
  }
}
