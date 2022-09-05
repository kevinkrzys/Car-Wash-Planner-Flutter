import 'package:carwashplanner/constants/colors.dart';
import 'package:flutter/material.dart';
import 'sections/home/homeavoid.dart';
import 'sections/home/homebestday.dart';
import 'sections/home/homeforecast.dart';
import 'sections/home/homeheader.dart';
import 'sections/home/homesearch.dart';

void main() {
  runApp(const HomeMain());
}

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              const HomeHeader(),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const HomeSearch(),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const HomeAvoid(),
                    const SizedBox(
                      height: 16.0,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: RawMaterialButton(
                        padding: const EdgeInsets.all(
                          12.0,
                        ),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          // side: const BorderSide(
                          //   width: 0.0,
                          //   color: Colors.grey,
                          // ),
                        ),
                        fillColor: accent,
                        splashColor: darkAccent,
                        enableFeedback: true,
                        elevation: 0.0,
                        onHighlightChanged: (value) {
                          setState(() {});
                        },
                        child: Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: darkGrey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const HomeBestDay(),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const HomeForecast(),
                    const SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
