import 'package:figma_desain/model/stories.dart';
import 'package:flutter/material.dart';

class MyStoryWidget extends StatelessWidget {
  const MyStoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 129,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          vertical: 22,
          horizontal: 14,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: Story.storiesDummy.length + 1,
        separatorBuilder: (context, index) => SizedBox(width: 8),
        itemBuilder: (context, index) {
          if (index < Story.storiesDummy.length) {
            Story story = Story.storiesDummy[index];

            return Column(
              children: [
                Container(
                  width: 72,
                  height: 72,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(72 / 2),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      story.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  story.name,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                  ),
                ),
              ],
            );
          }

          return Column(
            children: [
              Container(
                width: 72,
                height: 72,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(72 / 2),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    'http://assets.stickpng.com/images/58afdde1829958a978a4a6a6.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'New',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.black,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
