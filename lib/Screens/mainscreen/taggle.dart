import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Taggles {
  final String title;
  final String svg;
  Taggles({
    required this.title,
    required this.svg,
  });
}

List<Taggles> taggle = [
  Taggles(
    title: 'Home',
    svg: 'assets/svgs/home_FILL0_wght400_GRAD0_opsz48 1.svg',
  ),
  Taggles(
    title: 'Members',
    svg: 'assets/svgs/members.svg',
  ),
  Taggles(
    title: 'Adverts',
    svg: 'assets/svgs/campaign_FILL0_wght400_GRAD0_opsz48 1.svg',
  ),
  Taggles(
    title: 'Quotes',
    svg: 'assets/svgs/format_quote_black_24dp 1.svg',
  ),
  Taggles(
    title: 'Donations',
    svg: 'assets/svgs/paid_black_24dp 1.svg',
  ),
  Taggles(
    title: 'Legars',
    svg: 'assets/svgs/inventory_FILL0_wght400_GRAD0_opsz48 1.svg',
  ),
  Taggles(
    title: 'Prayers',
    svg: 'assets/svgs/prayers.svg',
  ),
  Taggles(
    title: 'Utilities',
    svg: 'assets/svgs/Utilities.svg',
  ),
];
