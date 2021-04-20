import 'package:flutter/material.dart';

class TestGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GridWidget(),
          Column(
            children: List.generate(
                4,
                (index) => Draggable(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 35,
                        width: 35,
                        color: Colors.cyan,
                      ),
                    ),
                    feedback: Container(
                      height: 35,
                      width: 35,
                      color: Colors.green,
                    ))),
          ),
        ],
      ),
    ));
  }
}

class GridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: GridView.count(
        crossAxisCount: 12,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 1,
        children: List.generate(
          144,
          (index) => Container(
            child: DragTarget(
                builder: (context, List<String> candidateData, rejectedData) {
              return Container(
                color: index % 2 == 0 ? Colors.black : Colors.cyan,
              );
            }, onWillAccept: (data) {
              return true;
            }, onAccept: (data) {
              // setState(() {
              //   isSuccessful = true;
              // });
            }, onMove: (data) {
              //possivelmente da pra mover o widget com isso
              //
            }),
          ),
        ),
      ),
    );
  }
}
