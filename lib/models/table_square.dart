import 'package:estimatrix/models/user_avatar.dart';
import 'package:flutter/material.dart';

class TableSquareModel {
  TableSquareModel({required this.id, this.filledAvatar});
  final String id;
  UserAvatar? filledAvatar;
}
