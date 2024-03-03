
import 'package:flutter/material.dart';

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
              onPressed: () {},
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
