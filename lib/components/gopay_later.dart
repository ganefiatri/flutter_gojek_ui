import 'package:flutter/material.dart';

import '../datas/news.dart';
import '../theme.dart';

class GopayLater extends StatelessWidget {
  const GopayLater({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 32,
          ),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/gopaylater.png',
                  height: 14,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Lebih hemat pake GoPayLater',
                  style: bold16.copyWith(color: dark1),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
                  style: regular14.copyWith(color: dark3),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        ...news.map(
          (item) => Container(
            padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: dark4),
              ),
              child: Column(
                children: [
                  Image.asset('assets/images/${item.image}'),
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: bold16.copyWith(color: dark1),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          item.description,
                          style: regular14.copyWith(color: dark3),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
