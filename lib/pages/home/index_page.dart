import 'package:flutter/material.dart';

import 'package:fickle_client/components/_components.dart';
import 'package:fickle_client/utils/_utils.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (size.isMobile) {
      return Scaffold(
        body: DefaultTabController(
          length: 4,
          child: SizedBox(
            height: size.height,
            child: Column(
              children: const [
                Expanded(
                  child: TabBarView(
                    physics: PageScrollPhysics(),
                    children: [
                      FickleColumn(
                        name: 'Backlog',
                        color: Colors.grey,
                        issues: [
                          FickleIssue(name: 'Issue 1', content: 'Content 1'),
                          FickleIssue(name: 'Issue 2', content: 'Content 2'),
                        ],
                      ),
                      FickleColumn(name: 'In Progress', color: Colors.blue),
                      FickleColumn(name: 'Pending', color: Colors.red),
                      FickleColumn(name: 'Done', color: Colors.green),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          FickleWorkspaceDesktopView(
            name: 'Workspace 1',
            children: [
              FickleColumn(
                name: 'Backlog',
                color: Colors.grey,
                issues: [
                  FickleIssue(name: 'Issue 1', content: 'Content 1'),
                  FickleIssue(name: 'Issue 2', content: 'Content 2'),
                ],
              ),
              FickleColumn(name: 'In Progress', color: Colors.blue),
              FickleColumn(name: 'Pending', color: Colors.red),
              FickleColumn(name: 'Done', color: Colors.green),
            ],
          ),
          FickleWorkspaceDesktopView(
            name: 'Workspace 2',
            children: [
              FickleColumn(
                name: 'In Progress',
                color: Colors.blue,
                issues: [
                  FickleIssue(name: 'Issue 1', content: 'Content 1'),
                  FickleIssue(name: 'Issue 2', content: 'Content 2'),
                ],
              ),
              FickleColumn(name: 'Pending', color: Colors.red),
              FickleColumn(name: 'Done', color: Colors.green),
            ],
          ),
        ],
      ),
    );
  }
}
