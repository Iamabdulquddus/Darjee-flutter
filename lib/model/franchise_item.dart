import 'package:flutter/material.dart';

import '../constants/images.dart';

class FranchiseItem {
  const FranchiseItem(
      {required this.title,
      required this.image,
      required this.overlayColor,
      required this.navigator});
  final String title;
  final String image;
  final Color overlayColor;
  final String navigator;
}

List<FranchiseItem> franchiseItemList = [
  FranchiseItem(
      title: 'Islamabad',
      image: islamabad,
      overlayColor: Colors.red.shade300.withOpacity(0.3),
      navigator: ''),
  FranchiseItem(
      title: 'Lahore',
      image: lahore,
      overlayColor: Colors.red.shade300.withOpacity(0.3),
      navigator: ''),
  FranchiseItem(
      title: 'Peshawar',
      image: peshawar,
      overlayColor: Colors.red.shade300.withOpacity(0.3),
      navigator: ''),
  FranchiseItem(
      title: 'Karachi',
      image: karachi,
      overlayColor: Colors.red.shade300.withOpacity(0.3),
      navigator: ''),
  FranchiseItem(
      title: 'Quetta',
      image: quetta,
      overlayColor: Colors.red.shade300.withOpacity(0.3),
      navigator: ''),
  FranchiseItem(
      title: 'Faisalabad',
      image: fasialabad,
      overlayColor: Colors.red.shade300.withOpacity(0.3),
      navigator: ''),
];
