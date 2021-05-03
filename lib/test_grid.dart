import 'package:estimatrix/models/table_square.dart';
import 'package:estimatrix/models/user_avatar.dart';
import 'package:estimatrix/widgets/user_avatar_widget.dart';
import 'package:flutter/material.dart';

class TestGridPage extends StatefulWidget {
  @override
  _TestGridPageState createState() => _TestGridPageState();
}

class _TestGridPageState extends State<TestGridPage> {
  List<UserAvatar> userList = [
    UserAvatar(id: '1', name: 'larissa', color: Colors.cyan, position: 0),
    UserAvatar(id: '2', name: 'laguna', color: Colors.pink, position: 1),
    UserAvatar(id: '3', name: 'batata', color: Colors.green, position: 2),
    UserAvatar(id: '4', name: 'polenta', color: Colors.purple, position: 3)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GridWidget(
                onTest: (avatar) {
                  setState(
                    () {
                      userList
                          .where((user) => user.id == avatar.id)
                          .first
                          .isDragFinished = true;
                    },
                  );
                },
              ),
              Column(
                children: userList
                    .map(
                      (avatar) => Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: UserAvatarWidget(
                          userAvatar: avatar,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
                              color: Colors.black,
                            ),
                      feedback: Container(
                        height: 35,
                        width: 35,
                        color: item.filledAvatar?.color,
                      ),
                      childWhenDragging: Container(
                        height: 35,
                        width: 35,
                        color: Colors.black,
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
                          color: Colors.black,
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
