import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../datas/icons.dart';
import '../theme.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27,
        right: 27,
        top: 32,
      ),
      child: SizedBox(
        height: 157,
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            ...menuIcons.map(
              (icon) => Container(
                child: Column(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: icon.color,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/${icon.icon}.svg',
                        color: dark4,
                        width: 24,
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      icon.title,
                      style: regular12_5.copyWith(color: dark2),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
