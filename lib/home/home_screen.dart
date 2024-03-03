import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:workload_tester/app/l10n/generated/l10n.dart';

import 'widgets/side_bar.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            title: Text(L.of(context).appName),
          ),
          drawer: constraints.maxWidth < 800 ? const SideBar() : null,
          body: Row(
            children: [
              if (constraints.maxWidth > 800) const SideBar(),
              Flexible(
                child: Container(
                  color: Colors.red,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
