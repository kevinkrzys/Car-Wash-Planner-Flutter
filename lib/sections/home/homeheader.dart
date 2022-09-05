import 'package:carwashplanner/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      // color: primary,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  8.0,
                ),
              ),
              border: Border.all(
                width: 1.0,
                color: accent,
              ),
            ),
            padding: const EdgeInsets.all(
              8.0,
            ),
            child: Icon(
              Icons.person,
              color: lightGrey,
            ),
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
                      'Hello,',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: lightGrey,
                      ),
                    ),
                    Text(
                      'Kevin!',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: darkGrey,
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(
                    8.0,
                  ),
                  child: Icon(
                    Icons.settings,
                    color: accent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
