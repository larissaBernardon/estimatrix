import 'package:estimatrix/core/board_manager.dart';
import 'package:estimatrix/core/models/table_square.dart';
import 'package:estimatrix/core/models/user_avatar.dart';
import 'package:flutter/material.dart';

class GridWidget extends StatefulWidget {
  final Function onTest;

  const GridWidget({required this.onTest});

  @override
  _GridWidgetState createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  final boardTargets =
      List.generate(144, (index) => TableSquareModel(id: '$index'));

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 12,
        childAspectRatio: 1,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        children: boardTargets
            .map(
              (item) => item.filledAvatar != null
                  ? Draggable(
                      data: item.filledAvatar,
                      child: item.filledAvatar?.isDragFinished ?? false
                          ? Container(
                              height: 35,
                              width: 35,
                              color: item.filledAvatar?.color,
                            )
                          : Container(
                              height: 35,
                              width: 35,
                              color: BoardManager().getBoardFieldColor(item.id),
                            ),
                      feedback: Container(
                        height: 35,
                        width: 35,
                        color: item.filledAvatar?.color,
                      ),
                      childWhenDragging: Container(
                        height: 35,
                        width: 35,
                        color: BoardManager().getBoardFieldColor(item.id),
                      ),
                      onDragCompleted: () {
                        item.filledAvatar = null;
                      },
                    )
                  : DragTarget(
                      builder: (
                        context,
                        List<UserAvatar?> candidateData,
                        rejectedData,
                      ) {
                        return Container(
                          color: BoardManager().getBoardFieldColor(item.id),
                        );
                      },
                      onWillAccept: (data) {
                        return true;
                      },
                      onAccept: (avatar) {
                        print("avatar $avatar");
                        widget.onTest(avatar);
                        setState(() {
                          item.filledAvatar = avatar as UserAvatar;
                        });
                      },
                    ),
            )
            .toList(),
      ),
    );
  }
}
