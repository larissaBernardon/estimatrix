import 'package:estimatrix/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class SessionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              height: 340,
              width: 310,
            ),
            SizedBox(
              width: 600,
              child: TextField(
                style: TextStyle(color: AppColors.accentPurple),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryPurple),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryPurple),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Escolha um nome de usuario...',
                  hintStyle: TextStyle(
                    color: AppColors.accentPurple,
                  ),
                ),
              ),
            ),
            TextButton(
              child: SizedBox(
                child: Center(
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                height: 50,
                width: 200,
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primaryPurple)),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
