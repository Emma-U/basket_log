import 'package:basket_log/setting/function/scrolling_widget.dart';
import 'package:basket_log/setting/utilies/constant.dart';
import 'package:flutter/material.dart';

class RoutesPage extends StatefulWidget {
  const RoutesPage({super.key});

  @override
  State<RoutesPage> createState() => _RoutesPageState();
}

class _RoutesPageState extends State<RoutesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor1,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(
                    child: Text(
                        'Kindly click here to Select Your Favourite BasketBall Team',
                        style: styleText()),
                  ),
                  const SizedBox(height: 20),
                  const ScrollingWidget()
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: kColor4,
                  backgroundColor: kColor6,
                ),
                onPressed: () {},
                child: const Text('Next'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
