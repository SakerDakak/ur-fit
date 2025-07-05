class OnBoardingModel {
  late final int id;

  late final String title;

  late final String text;

  late final List<String> img;
  late final String? icon;
  late final String? subtitle;

  OnBoardingModel({
    required this.id,
    required this.title,
    required this.text,
    this.subtitle,
    required this.img,
    this.icon,
  });
}
