import 'package:flutter/material.dart';

class Responsive {
  BuildContext context;
  Responsive({
    required this.context,
  });
  final double _protohyt = 1024;
  final double _protoWdth = 1440;
  double cal_hyt(double hyt) {
    final double deviceHyt = MediaQuery.of(context).size.height;
    return (hyt / _protohyt * deviceHyt);
  }

  double cal_wdth(double wyd) {
    final double deviceHyt = MediaQuery.of(context).size.width;
    return (wyd / _protoWdth * deviceHyt);
  }
}
