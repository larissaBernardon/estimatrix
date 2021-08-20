import 'package:estimatrix/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class IssuesBoardWidget extends StatefulWidget {
  const IssuesBoardWidget({Key? key}) : super(key: key);

  @override
  _IssuesBoardWidgetState createState() => _IssuesBoardWidgetState();
}

class _IssuesBoardWidgetState extends State<IssuesBoardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryGray,
      width: 250,
      height: 550,
      child: ListView(
        children: List.generate(10,
            (index) => Container(width: 60, height: 30, color: Colors.black)),
      ),
    );
  }
}
