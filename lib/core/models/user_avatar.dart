import 'package:estimatrix/enums/estimation_status.dart';
import 'package:flutter/material.dart';

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

  @override
  toString() {
    return '{id: $id, color: $color, isDragFinished: $isDragFinished}';
  }
}
