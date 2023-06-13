class ModelOnBoarding {
  String image;
  double width1;
  double width2;
  double width3;
  String title;
  String subTitle;

  ModelOnBoarding({
    required this.image,
    required this.width1,
    required this.width2,
    required this.width3,
    required this.title,
    required this.subTitle,
  });
}

final List<ModelOnBoarding> onBoarding = [
  (ModelOnBoarding(
    image: 'assets/images/on-boarding/onBoarding1.png',
    width1: 40,
    width2: 15,
    width3: 15,
    title: 'Enim Lobortis',
    subTitle:
        'Program Extended Warranty Terbaru Dari United Tractors dan Komatsu',
  )),
  (ModelOnBoarding(
    image: 'assets/images/on-boarding/onBoarding2.png',
    width1: 15,
    width2: 40,
    width3: 15,
    title: 'Sodales Neque',
    subTitle: 'Khusus Untuk Model PC210-10M0 dan PC200-10M0CE',
  )),
  (ModelOnBoarding(
    image: 'assets/images/on-boarding/onBoarding3.png',
    width1: 15,
    width2: 15,
    width3: 40,
    title: 'Sit Amet',
    subTitle:
        'Periodic Service Wajib Menggunakan Genuine Oli Dan Parts Dari UT',
  )),
];
