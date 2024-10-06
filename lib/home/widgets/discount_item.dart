import 'package:flutter/material.dart';

class DiscountItem extends StatelessWidget {
  final String title;

  const DiscountItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height*0.175,
          margin: const EdgeInsets.fromLTRB(8, 0, 8, 16),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(height: 8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "1.0 km",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            Icon(
              Icons.circle,
              size: 4,
              color: Colors.green,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 14,
                  color: Colors.amber,
                ),
                SizedBox(width: 4),
                Text(
                  "4.8 reviews",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
