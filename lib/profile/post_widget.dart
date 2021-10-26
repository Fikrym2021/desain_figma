import 'package:figma_desain/colors.dart';
import 'package:figma_desain/model/profile_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../assets.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          indicatorColor: colorBlack26,
          labelColor: colorBlack26,
          unselectedLabelColor: colorBlack26.withOpacity(0.5),
          tabs: [
            Tab(
              icon: SvgPicture.asset(ICON_GRID),
            ),
            Tab(
              icon: SvgPicture.asset(ICON_PERSON_FRAME),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemCount: ProfilePost.postsDummy.length,
                itemBuilder: (context, index) {
                  ProfilePost post = ProfilePost.postsDummy[index];

                  return Stack(
                    children: [
                      Positioned.fill(
                        child: Image.network(
                          post.imageUrls.first,
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (post.imageUrls.length > 1)
                        Positioned(
                          top: 6.5,
                          right: 6.5,
                          child: SvgPicture.asset(ICON_STACK),
                        ),
                    ],
                  );
                },
              ),
              Center(child: Text('2')),
            ],
          ),
        ),
      ],
    );
  }
}
