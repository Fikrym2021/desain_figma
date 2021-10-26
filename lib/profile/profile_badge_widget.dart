// import 'package:figma_desain/images/circular_image_widget.dart';
import 'package:figma_desain/profile/profile_count_widget.dart';
import 'package:flutter/material.dart';

class ProfileBadgeWidget extends StatelessWidget {
  const ProfileBadgeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 9, bottom: 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 16),
          Container(
            width: 72,
            height: 72,
            padding: EdgeInsets.all(0),
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
                'https://selular.id/wp-content/uploads/2021/05/Berita-Ke-5-Instagram.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 50),
          ProfileCountWidget(
            count: 12,
            label: 'Posts',
            onTap: () {},
          ),
          SizedBox(width: 27),
          ProfileCountWidget(
            count: 10900,
            label: 'Followers',
            onTap: () {},
          ),
          SizedBox(width: 15),
          ProfileCountWidget(
            count: 11,
            label: 'Following',
            onTap: () {},
          ),
          SizedBox(width: 27),
        ],
      ),
    );
  }
}
