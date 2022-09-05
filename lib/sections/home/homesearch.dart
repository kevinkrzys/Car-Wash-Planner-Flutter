import 'package:carwashplanner/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({super.key});

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          // controller: searchController,
          decoration: InputDecoration(
            fillColor: lighterGrey,
            filled: true,
            prefixIcon: Icon(
              Icons.search,
              color: darkGrey,
              weight: double.infinity,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: 16.0,
            ),
            hintText: 'Search for your city',
            hintStyle: TextStyle(
              fontSize: 18.0,
              color: lightGrey,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
        ),
        DropdownButtonFormField(
          items: <String>['Texas', 'Chicago', 'New York']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {},
        )
      ],
    );
  }
}
