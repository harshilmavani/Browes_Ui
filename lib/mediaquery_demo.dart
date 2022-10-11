import 'package:flutter/material.dart';

class MediaQueryDemo extends StatelessWidget {
  const MediaQueryDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: height / 5,
              width: width / 2,
              color: Colors.red,
            ),
            SizedBox(
              height: height * 0.15,
            ),
            Text(
              "Hello",
              textScaleFactor: 1,
            ),
          ],
        ),
      ),
    );
  }
}
