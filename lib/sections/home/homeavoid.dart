import 'package:carwashplanner/constants/colors.dart';
import 'package:flutter/material.dart';

class AvoidableButton extends StatefulWidget {
  final String label;
  bool selected = false;
  Color cardColor = Colors.transparent;

  AvoidableButton({super.key, required this.label});

  @override
  State<AvoidableButton> createState() => _AvoidableButtonState();
}

class _AvoidableButtonState extends State<AvoidableButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        setState(() {
          widget.selected = widget.selected ? false : true;
          widget.cardColor = widget.selected ? accent : Colors.transparent;
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(
          color: accent,
          width: 1.0,
        ),
      ),
      fillColor: widget.cardColor,
      splashColor: darkAccent,
      enableFeedback: true,
      elevation: 0.0,
      child: Text(
        widget.label,
        style: TextStyle(
          fontSize: 16.0,
          color: darkGrey,
        ),
      ),
    );
  }
}

// start

class HomeAvoid extends StatefulWidget {
  const HomeAvoid({super.key});

  @override
  State<HomeAvoid> createState() => _HomeAvoidState();
}

Color buttonColor = Colors.white;

class _HomeAvoidState extends State<HomeAvoid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Avoid',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: darkGrey,
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AvoidableButton(
                  label: 'Storm',
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AvoidableButton(
                  label: 'Drizzle',
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AvoidableButton(
                  label: 'Rain',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AvoidableButton(
                  label: 'Snow',
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AvoidableButton(
                  label: 'Dust',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
