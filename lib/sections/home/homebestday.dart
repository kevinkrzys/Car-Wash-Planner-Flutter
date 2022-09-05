import 'package:carwashplanner/constants/colors.dart';
import 'package:flutter/material.dart';

import 'homeforecast.dart';

class HomeBestDay extends StatefulWidget {
  const HomeBestDay({super.key});

  @override
  State<HomeBestDay> createState() => _HomeBestDayState();
}

class _HomeBestDayState extends State<HomeBestDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Best Day',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        ForecastCards(
          day: 'Sunday',
          date: '10th',
          forecast: 'Rain',
          month: 'September',
          probability: '10%',
        ),
      ],
    );
  }
}
