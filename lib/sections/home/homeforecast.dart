import 'package:carwashplanner/constants/colors.dart';
import 'package:flutter/material.dart';

class ForecastCards extends StatefulWidget {
  final String day, month, date, forecast, probability;

  const ForecastCards(
      {super.key,
      required this.day,
      required this.month,
      required this.date,
      required this.forecast,
      required this.probability});

  @override
  State<ForecastCards> createState() => _ForecastCardsState();
}

class _ForecastCardsState extends State<ForecastCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: lighterGrey,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
                color: accent,
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    8.0,
                  ),
                )),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.day}, ${widget.month}${widget.date}',
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(widget.forecast,
                            style: TextStyle(
                              color: darkGrey,
                              fontSize: 16.0,
                            )),
                        const Text(' - '),
                        Text(
                          widget.probability,
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Icon(
                  Icons.chevron_right,
                  size: 32.0,
                  color: darkGrey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeForecast extends StatefulWidget {
  const HomeForecast({super.key});

  @override
  State<HomeForecast> createState() => _HomeForecastState();
}

class _HomeForecastState extends State<HomeForecast> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Forecast',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Column(
          children: const [
            ForecastCards(
              day: 'Sunday',
              date: '11th',
              forecast: 'Rain',
              month: 'September',
              probability: '10%',
            ),
            SizedBox(
              height: 16.0,
            ),
            ForecastCards(
              day: 'Sunday',
              date: '12th',
              forecast: 'Rain',
              month: 'September',
              probability: '10%',
            ),
            SizedBox(
              height: 16.0,
            ),
            ForecastCards(
              day: 'Sunday',
              date: '13th',
              forecast: 'Rain',
              month: 'September',
              probability: '10%',
            ),
            SizedBox(
              height: 16.0,
            ),
            ForecastCards(
              day: 'Sunday',
              date: '14th',
              forecast: 'Rain',
              month: 'September',
              probability: '10%',
            ),
            SizedBox(
              height: 16.0,
            ),
            ForecastCards(
              day: 'Sunday',
              date: '15th',
              forecast: 'Rain',
              month: 'September',
              probability: '10%',
            ),
            SizedBox(
              height: 16.0,
            ),
            ForecastCards(
              day: 'Sunday',
              date: '16th',
              forecast: 'Rain',
              month: 'September',
              probability: '10%',
            ),
            SizedBox(
              height: 16.0,
            ),
            ForecastCards(
              day: 'Sunday',
              date: '17th',
              forecast: 'Rain',
              month: 'September',
              probability: '10%',
            ),
          ],
        )
      ],
    );
  }
}
