import 'package:estimatrix/models/user_avatar.dart';
import 'package:estimatrix/widgets/estimation_board_widget.dart';
import 'package:estimatrix/widgets/user_avatar_section_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
              EstimationBoardWidget(
                onDragFinish: (avatar) {
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
                        child: UserAvatarSectionWidget(
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
