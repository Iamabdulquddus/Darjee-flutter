import 'package:flutter/material.dart';

import '../constants/images.dart';

class OrderItem {
  const OrderItem(
      {required this.title,
        required this.image,
        required this.navigator});
  final String title;
  final String image;
  final String navigator;
}

List<OrderItem> orderItemList = [
  OrderItem(
      title: 'Shalwar kameez',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Waist Coat',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Coat',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: '3Pic',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Sherwani',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Prince Coat',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Desi Kurta',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Simple Kurta',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Pent Shirt',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Pent',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'College Uniform',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Simple Trouser',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Shirt',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: '2 Piece',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Doctor Uniform',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Pent Coat',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Boski shalwar kameez',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Desi kurta jali wala',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Darjee Special Kurta',
      image: islamabad,
      navigator: ''),
  OrderItem(
      title: 'Darjee Kurta VIP',
      image: islamabad,
      navigator: ''),
];
