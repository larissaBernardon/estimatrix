import 'package:estimatrix/enums/estimation_status.dart';
import 'package:estimatrix/models/user_avatar.dart';
import 'package:flutter/material.dart';

class UserAvatarSectionWidget extends StatelessWidget {
  final UserAvatar userAvatar;

  UserAvatarSectionWidget({required this.userAvatar});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      userAvatar.status == EstimationStatus.done
          ? Container(
              height: 35,
              width: 35,
              child: Icon(Icons.check_circle_rounded),
            )
          : Draggable(
              data: userAvatar,
              child: Container(
                height: 35,
                width: 35,
                color: userAvatar.color,
              ),
              feedback: Container(
                height: 35,
                width: 35,
                color: userAvatar.color,
              ),
              childWhenDragging: Container(
                child: Icon(Icons.not_listed_location_outlined),
              ),
              onDragCompleted: () => userAvatar.status = EstimationStatus.done,
            ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(children: [
          Text(userAvatar.name),
          Text(userAvatar.status == EstimationStatus.done
              ? 'Pronto'
              : 'Estimando')
        ]),
      ),
    ]);
  }
}
