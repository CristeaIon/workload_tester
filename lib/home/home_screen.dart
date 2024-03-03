import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:workload_tester/app/l10n/generated/l10n.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(L.of(context).appName),),
      body: Container(height: 400,width: 400,color: Colors.amber,),
    );
  }
}
