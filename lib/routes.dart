import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'gallery_page.dart';

final Map<String, WidgetBuilder> routes = {
  '/profile': (context) => ProfilePage(),
  '/gallery': (context) => GalleryPage(),
};
