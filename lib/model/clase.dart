import 'package:flutter/material.dart';

class Clases {
  final String id;
  final String imageUrl;
  final String rating;
  final bool isBookmarked;
  final String courseTitle;
  final String instructor;
  final String price;
  final String duration;
  final String sectionsLength;
  final List sectionLaps;
  final List<Widget> pages;
  String description;
  String courseTag;

  Clases(
        {required this.id,
          required this.imageUrl,
          required this.rating,
          required this.isBookmarked,
          required this.courseTitle,
          required this.instructor,
          required this.price,
          required this.duration,
          required this.sectionsLength,
          required this.sectionLaps,
          this.description = _description,
          this.pages = const [], // Add field initializer for 'Pages'
          required this.courseTag});
}

const _description =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo';
