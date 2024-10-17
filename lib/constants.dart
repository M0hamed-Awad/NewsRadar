import 'package:flutter/material.dart';
import 'package:news_radar_app/models/category_model.dart';

// News Categories

const List<CategoryModel> kCategories = [
  CategoryModel(
    categoryName: 'General',
    image: 'assets/images/general.jpg',
  ),
  CategoryModel(
    categoryName: 'Business',
    image: 'assets/images/business.jpg',
  ),
  CategoryModel(
    categoryName: 'Entertainment',
    image: 'assets/images/entertainment.jpg',
  ),
  CategoryModel(
    categoryName: 'Health',
    image: 'assets/images/health.jpg',
  ),
  CategoryModel(
    categoryName: 'Science',
    image: 'assets/images/science.jpg',
  ),
  CategoryModel(
    categoryName: 'Sports',
    image: 'assets/images/sports.jpg',
  ),
  CategoryModel(
    categoryName: 'Technology',
    image: 'assets/images/technology.jpg',
  ),
];

// Colors

const Color kPrimaryPurpleColor = Color(0xff6F2672);
const Color kSecondaryOrangeColor = Color(0xffF28705);
const Color kRedColor = Color(0xffF23030);
const Color kGreenColor = Color(0xff267365);

// Logo

const String kLogo = "assets/images/News-Radar-Logo.png";

// Landing Page Image

const String kLandingPageImage = "assets/images/landing_page_background.jpg";
