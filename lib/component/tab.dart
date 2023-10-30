import 'package:flutter/material.dart';
import 'package:chatting/config/palette.dart';

class LoginSignupTab extends StatelessWidget {
  final String title;
  final bool isSignupScreen;
  final Function tabAction;

  const LoginSignupTab(
      {required this.title,
      required this.isSignupScreen,
      required this.tabAction,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tabAction();
      },
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSignupScreen ? Palette.activeColor : Palette.textColor1,
            ),
          ),
          if (isSignupScreen)
            Container(
              margin: EdgeInsets.only(top: 3),
              height: 2,
              width: 55,
              color: Colors.orange,
            )
        ],
      ),
    );
  }
}
