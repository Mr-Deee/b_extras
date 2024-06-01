import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateTimeLocation extends StatelessWidget {
  const DateTimeLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.green),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  CupertinoIcons.calendar_today,
                  size: 30,
                  color: Colors.green,
                ),
                const SizedBox(width: 8),
                Text(
                  "June 2, 2024",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(
                  CupertinoIcons.clock,
                  size: 30,
                  color: Colors.green,
                ),
                const SizedBox(width: 8),
                Text(
                  "3:00PM",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(
                  CupertinoIcons.location_solid,
                  size: 30,
                  color: Colors.green,
                ),
                const SizedBox(width: 8),
                Text(
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  "Weija-Gbawe, Accra Ghana",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
