import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../components/check_answer.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.flag});
  String flag;

  @override
  Widget build(BuildContext context) {

    Check ob1 = Check();
    int image = ob1.checkFlag(flag);

    return Center(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
              child: Image.asset('ConFig/Packages/Upgrade/Dart/iijk0345huhok0$image.png'),
            ),

            const SizedBox(
              height: 20,
            ),

            BottomButton(onTap: () {
              Navigator.pop(context);
            }, text: "RE-CHECK")
          ],
        ),
      ),
    );
  }
}
