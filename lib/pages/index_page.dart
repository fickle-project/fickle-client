import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class MouseDraggableScrollBehavior extends MaterialScrollBehavior {
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
      behavior: MouseDraggableScrollBehavior(),
      child: DefaultTabController(
        length: 3,
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  physics: PageScrollPhysics(),
                  children: [
                    ListView(
                      children: [
                        Text('1'),
                        Container(
                          height: 100,
                          color: Colors.red,
                        ),
                        Container(
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          height: 100,
                          color: Colors.green,
                        ),
                        Container(
                          height: 100,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                    ListView(
                      children: [
                        Text('2'),
                        Container(
                          height: 100,
                          color: Colors.red,
                        ),
                        Container(
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          height: 100,
                          color: Colors.green,
                        ),
                        Container(
                          height: 100,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                    ListView(
                      children: [
                        Text('3'),
                        Container(
                          height: 100,
                          color: Colors.red,
                        ),
                        Container(
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          height: 100,
                          color: Colors.green,
                        ),
                        Container(
                          height: 100,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ]
                )
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
