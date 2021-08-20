import 'package:estimatrix/core/styles/app_colors.dart';
import 'package:estimatrix/test_grid.dart';
import 'package:estimatrix/widgets/issues_board.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appPurple,
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IssuesBoardWidget(),
            _buildGridComponent(),
            Container(
              color: Colors.purple,
              width: 250,
              height: 500,
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.blackBackground,
    );
  }

  Column _buildGridComponent() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildGridHeader(),
            Row(
              children: [
                _buildVerticalSubtitle(),
                GridWidget(onTest: (_) {}),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 65.0),
          child: Container(
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('S'),
                  Text('M'),
                  Text('L'),
                  Text('XL'),
                ],
              )),
        ),
        Text(
          'Esforço',
          style: TextStyle(
            fontSize: 26,
            color: AppColors.accentPurple,
          ),
        )
      ],
    );
  }

  Widget _buildVerticalSubtitle() {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: RotatedBox(
          quarterTurns: 3,
          child: Text(
            'Incerteza',
            style: TextStyle(
              fontSize: 26,
              color: AppColors.accentPurple,
            ),
          ),
        ),
      ),
      Container(
        height: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('XL'),
            Text('L'),
            Text('M'),
            Text('S'),
          ],
        ),
      ),
    ]);
  }

  Widget _buildGridHeader() {
    return Row(
      children: [
        Container(
          color: AppColors.supportPurple,
          width: 120,
          height: 40,
          child: Center(
            child: Text(
              'ASLAN-500/',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          color: AppColors.supportPurple,
          width: 360,
          height: 40,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Integração encontros', style: TextStyle(fontSize: 18)),
          ),
        )
      ],
    );
  }
}
