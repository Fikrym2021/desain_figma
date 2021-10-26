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
          'https://raw.githubusercontent.com/Fikrym2021/desain_figma/main/assets/images/Post%2010.png',
      name: 'Story 1',
    ),
    Story(
      imageUrl:
          'https://raw.githubusercontent.com/Fikrym2021/desain_figma/main/assets/images/Post%204.png',
      name: 'Story 2',
    ),
    Story(
      imageUrl:
          'https://raw.githubusercontent.com/Fikrym2021/desain_figma/main/assets/images/Saved%20Story%203.png',
      name: 'Story 3',
    ),
    Story(
      imageUrl:
          'https://raw.githubusercontent.com/Fikrym2021/desain_figma/main/assets/images/Saved%20Story%204.png',
      name: 'Story 4',
    ),
  ];
}
