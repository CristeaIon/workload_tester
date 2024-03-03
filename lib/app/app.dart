import 'package:flutter/material.dart';
import 'package:workload_tester/app/navigation/workloadtester_navigation.dart';

class WorkloadTesterApp extends StatelessWidget {
  const WorkloadTesterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: WorkloadTesterNavigator().config(),
      title: 'Workload Tester',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
