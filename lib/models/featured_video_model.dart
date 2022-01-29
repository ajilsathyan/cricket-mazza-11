class FeaturedVideoModel {
  String? image;
  String? title;
  String? description;
  FeaturedVideoModel(
      {required this.title, required this.image, required this.description});
}

List<FeaturedVideoModel> featuredList = [
  FeaturedVideoModel(
      title: "Australia sit pretty with 175",
      image: "assets/images/australia.jpg",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
          " Lorem Ipsum has been the industry's standard dummy text ever "
          "since the 1500s, when an unknown printer took a galley of type"
          " and scrambled it to make a type specimen book."),
  FeaturedVideoModel(
      title: "Guatam Gambhir Records, world Cups",
      image: "assets/images/india.jpg",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
          " Lorem Ipsum has been the industry's standard dummy text ever "
          "since the 1500s, when an unknown printer took a galley of type"
          " and scrambled it to make a type specimen book."),
  FeaturedVideoModel(
      title: "Find Pakistans new way of something",
      image: "assets/images/pakistan.jpg",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
          " Lorem Ipsum has been the industry's standard dummy text ever "
          "since the 1500s, when an unknown printer took a galley of type"
          " and scrambled it to make a type specimen book."),
  FeaturedVideoModel(
      title: "Australia sit pretty with 175",
      image: "assets/images/australia.jpg",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
          " Lorem Ipsum has been the industry's standard dummy text ever "
          "since the 1500s, when an unknown printer took a galley of type"
          " and scrambled it to make a type specimen book."),
];
