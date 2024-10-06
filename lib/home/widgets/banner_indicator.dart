import 'package:flutter/material.dart';

class BannerIndicator extends StatelessWidget {
  final int currentBanner;

  const BannerIndicator({super.key, required this.currentBanner});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.03,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: ListView.separated(
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, pos) => Row(
            children: [
              Container(
                width: 16,
                height: 4,
                decoration: BoxDecoration(
                  color: currentBanner == pos? Colors.green
                      : Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
          separatorBuilder: (_,__) => const SizedBox(width: 4),
        ),
      ),
    );
  }
}
