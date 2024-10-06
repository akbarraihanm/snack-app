import 'package:flutter/material.dart';
import 'package:snacks_app/core/components/button/app_button.dart';

class BannerItem extends StatelessWidget {
  final Color color;
  final String title;

  const BannerItem({super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          AppButton(
            title: "Order Now",
            color: Colors.black,
            radius: 24,
            width: MediaQuery.sizeOf(context).width*0.0125,
            elevation: 0.0,
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
