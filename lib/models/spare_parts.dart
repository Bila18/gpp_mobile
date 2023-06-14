class ModelSpareParts {
  String image;
  String title;
  String subTitle;
  String model;

  ModelSpareParts({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.model,
  });
}

final List<ModelSpareParts> spareParts = [
  (ModelSpareParts(
    image: 'assets/images/spare-parts/pic1.jpg',
    title: 'Arcu Dictum',
    subTitle: 'Sollicitudin nibh sit amet commodo nulla facilisi nullam',
    model: 'PC210-10MO',
  )),
  (ModelSpareParts(
    image: 'assets/images/spare-parts/pic2.jpg',
    title: 'Accumsan In',
    subTitle: 'Faucibus et molestie ac feugiat sed lectus vestibulum',
    model: 'PC200-10MOCE',
  )),
  (ModelSpareParts(
    image: 'assets/images/spare-parts/pic3.jpg',
    title: 'Tincidunt Id',
    subTitle: 'Urna nec tincidunt praesent semper feugiat nibh sed',
    model: 'PC200-10MOCE',
  )),
  (ModelSpareParts(
    image: 'assets/images/spare-parts/pic4.jpg',
    title: 'Arcu Dictum',
    subTitle: 'Pellentesque habitant morbi tristique senectus et netus et',
    model: 'PC210-10MO',
  )),
];
