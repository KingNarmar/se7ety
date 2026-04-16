import 'package:flutter/material.dart';
import 'package:se7ety/core/routes/routes.dart';

class Se7ety extends StatelessWidget {
  const Se7ety({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.routes,
    );
  }
}
