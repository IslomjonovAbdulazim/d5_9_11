import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String choice = "M";
  double price = 30.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: SizedBox(
                    height: 300,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: 240,
                          height: 240,
                          decoration: BoxDecoration(
                            color: Color(0xff458353),
                            borderRadius: BorderRadius.circular(200),
                          ),
                        ),
                        Image.asset("assets/starbucks.png"),
                      ],
                    ),
                  ),
                ),

                // Name & Price
                Row(
                  children: [
                    // Text HW
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          price.toStringAsFixed(2),
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // HW Size Options

                // Sizes
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 75,
                          width: 75,
                          child: CupertinoButton(
                            color: Color(0xffEDEDED),
                            borderRadius: BorderRadius.circular(100),
                            onPressed: () {},
                            child: Text("S"),
                          ),
                        ),
                        Text("Small"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
