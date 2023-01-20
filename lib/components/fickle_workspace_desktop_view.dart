import 'package:flutter/material.dart';

import 'package:fickle_client/components/_components.dart';

/// ワークスペースのデスクトップサイズ用の View
///
/// モバイルの場合は Column を素で使用して下さい
class FickleWorkspaceDesktopView extends StatelessWidget {
  const FickleWorkspaceDesktopView({
    super.key,
    required this.name,
    required this.children,
  });

  final String name;
  final List<FickleColumn> children;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          ListTile(title: Text(name)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final FickleColumn child in children)
                  SizedBox(width: 300, child: child),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
