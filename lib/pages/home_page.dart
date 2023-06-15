import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek_ui/components/akses_cepat.dart';
import 'package:gojek_ui/components/goclub.dart';
import 'package:gojek_ui/components/gopay.dart';
import 'package:gojek_ui/components/gopay_later.dart';
import 'package:gojek_ui/components/menu.dart';
import 'package:gojek_ui/components/search.dart';
import 'package:gojek_ui/datas/icons.dart';
import 'package:gojek_ui/datas/news.dart';
import 'package:gojek_ui/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark4,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: green1,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: dark4,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  "Beranda",
                  style: semibold12_5.copyWith(color: green1),
                ),
              ),
              ...['Promo', 'Pesanan', 'Chat'].map((title) => Flexible(
                    fit: FlexFit.loose,
                    flex: 1,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 12),
                        child: Center(
                          child: Text(
                            title,
                            style: semibold14,
                          ),
                        )),
                  )),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search
            Search(),
            // Gopay
            Gopay(),
            // Menu Icons
            Menu(),
            // goclub
            GoClub(),
            // Akses Cepat
            AksesCepat(),
            // Gopaylater
            GopayLater(),
          ],
        ),
      ),
    );
  }
}
