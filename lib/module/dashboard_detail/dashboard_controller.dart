import 'package:flutter/material.dart';

class DashboardController extends StatelessWidget {
  final String title;
  final String date;
  final String location;
  final String status;

  const DashboardController({
    Key? key,
    required this.title,
    required this.date,
    required this.location,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),

            // Date
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 16.0, color: Colors.grey),
                const SizedBox(width: 8.0),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),

            // Location
            Row(
              children: [
                const Icon(Icons.location_on, size: 16.0, color: Colors.grey),
                const SizedBox(width: 8.0),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),

            // Status
            Row(
              children: [
                const Icon(Icons.info, size: 16.0, color: Colors.grey),
                const SizedBox(width: 8.0),
                Text(
                  status,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: status.toLowerCase() == "confirmed"
                        ? Colors.green
                        : Colors.red,
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
