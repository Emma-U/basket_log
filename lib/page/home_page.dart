import 'package:basket_log/page/route_page.dart';
import 'package:basket_log/setting/utilies/constant.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor1,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: kColor2,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RoutesPage(),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('Your BasketBall', style: styleText()),
                Text('Updates mobile app', style: styleText()),
                SizedBox(
                  height: 200,
                  child: Image.asset('assets/images/basket.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Score . Starts . Schedules . Alerts',
                        style: styleText())
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Material(
                  color: kColor3,
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Two fimger long presss anywhere to open menu',
                        style: TextStyle(color: kColor4, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
