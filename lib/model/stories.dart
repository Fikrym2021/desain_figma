class Story {
  final String imageUrl;
  final String name;

  Story({
    required this.imageUrl,
    required this.name,
  });

  static List<Story> storiesDummy = [
    Story(
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg',
      name: 'Story 1',
    ),
    Story(
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg',
      name: 'Story 2',
    ),
    Story(
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg',
      name: 'Story 3',
    ),
    Story(
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg',
      name: 'Story 4',
    ),
  ];
}
