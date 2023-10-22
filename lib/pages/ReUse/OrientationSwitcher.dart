import 'package:flutter/material.dart';

class OrientationSwitcher extends StatelessWidget {
  final List<Widget> children;
  final bool isColumn;

  const OrientationSwitcher({super.key, this.children = const [],this.isColumn = true});

  @override
  Widget build(BuildContext context) {
    return isColumn
        ? Column(children: children)
        : Row(children: children);
  }
}