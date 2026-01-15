import 'package:flutter/material.dart';
import 'global_custom_app_bar.dart';

class GlobalCustomScaffold extends StatelessWidget {
  const GlobalCustomScaffold({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalCustomAppBar(title: 'EOTC Bible Mobile App'),
      body: SafeArea(child: child),
    );
  }
}
