import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:fickle_client/components/_components.dart';

// マウスでタブを切り替えるために必要
class _MouseDraggableScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => <PointerDeviceKind>{
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ScrollConfiguration(
        behavior: _MouseDraggableScrollBehavior(),
        child: DefaultTabController(
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
      ),
    );
  }
}
