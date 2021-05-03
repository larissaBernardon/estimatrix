import 'package:flutter/material.dart';

enum EstimationStatus { done, waiting, moving }

class UserAvatar {
  final String id;
  final Color color;
  final String name;
  EstimationStatus status;
  bool movingState;
  final int position;
  bool isDragFinished;

  UserAvatar({
    required this.id,
    required this.name,
    this.movingState = false,
    this.status = EstimationStatus.waiting,
    required this.color,
    required this.position,
    this.isDragFinished = false,
  });

  factory UserAvatar.ghost(UserAvatar userAvatar) {
    return UserAvatar(
      id: userAvatar.id,
      color: Colors.grey,
      name: userAvatar.name,
      status: userAvatar.status,
      position: userAvatar.position,
    );
  }

  @override
  toString() {
    return '{id: $id, color: $color, isDragFinished: $isDragFinished}';
  }
}
