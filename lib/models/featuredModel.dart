import 'dart:ffi';

// ignore: camel_case_types
class featuredModel {
  final String name;
  final String url;
  final int rating;
  final String subtext;

  const featuredModel(
      {required this.name,
      required this.url,
      required this.rating,
      required this.subtext});
}

const featureddata = [
  featuredModel(
      name: 'madrid',
      url:
          'https://www.pixelstalk.net/wp-content/uploads/2015/05/Santiago-Bernabeu-Stadium-Real-Madrid-Football-Club-Wallpapers-HD.jpg',
      rating: 99,
      subtext: "spain"),
  featuredModel(
      name: 'chelsea',
      url:
          'https://wallpaperaccess.com/full/1640028.jpg',
      rating: 88,
      subtext: "england"),
  featuredModel(
      name: 'barcelona',
      url:
          'https://cdn.thefootballlovers.com/wp-content/uploads/2020/04/FC-Barcelona-Camp-Nou-4K-2020-wallpaper-HD.jpg',
      rating: 87,
      subtext: "spain")
];
