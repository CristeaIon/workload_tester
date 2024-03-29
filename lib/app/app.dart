import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:workload_tester/app/l10n/generated/l10n.dart';
import 'package:workload_tester/app/navigation/workloadtester_navigation.dart';
import 'package:workload_tester/app/theme/theme.dart';

class WorkloadTesterApp extends StatelessWidget {
  const WorkloadTesterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Workload Tester",
      routerConfig: WorkloadTesterNavigator().config(),
      supportedLocales: L.delegate.supportedLocales,
      localizationsDelegates: const [
        L.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: WorkloadTesterTheme.light(),
    );
  }
}
