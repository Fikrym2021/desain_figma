import 'package:figma_desain/profile/post_widget.dart';
import 'package:figma_desain/profile/profile_badge_widget.dart';
import 'package:figma_desain/profile/profile_bio_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../assets.dart';
import '../colors.dart';
import 'my_story_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ProfileBadgeWidget(),
          ProfileBioWidget(),
          SizedBox(height: 12),
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                      side: BorderSide(color: colorGrey, width: 1),
                    ),
                    elevation: 0,
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              SizedBox(
                width: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                      side: BorderSide(color: colorGrey, width: 1),
                    ),
                    elevation: 0,
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset(ICON_DROPDOWN),
                ),
              ),
              SizedBox(width: 16),
            ],
          ),
          MyStoryWidget(),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: PostWidget(tabController: _tabController),
          ),
        ],
      ),
    );
  }
}
