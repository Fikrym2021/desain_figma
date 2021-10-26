import 'package:figma_desain/assets.dart';
import 'package:figma_desain/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'images/circular_image_widget.dart';

enum SelectedBody { home, search, reels, shop, profile }

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SelectedBody selectedBody;

  @override
  void initState() {
    super.initState();

    selectedBody = SelectedBody.home;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: kToolbarHeight,
        title: Row(
          children: [
            Text(
              'fikrymudhhirulhaq',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 5),
            SvgPicture.asset(ICON_DROPDOWN),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              ICON_ADD,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              ICON_BURGER,
            ),
          ),
        ],
      ),
      body: _getSelectedBody(selectedBody),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (selectedIndex) {
          setState(
            () {
              switch (selectedIndex) {
                case 0:
                  selectedBody = SelectedBody.home;
                  break;
                case 1:
                  selectedBody = SelectedBody.search;
                  break;
                case 2:
                  selectedBody = SelectedBody.reels;
                  break;
                case 3:
                  selectedBody = SelectedBody.shop;
                  break;
                case 4:
                  selectedBody = SelectedBody.profile;
                  break;
                default:
                  selectedBody = SelectedBody.home;
                  break;
              }
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ICON_HOME),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ICON_SEARCH),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ICON_REELS),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ICON_SHOP),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: CircularImageWidget(
              imageUrl:
                  'https://raw.githubusercontent.com/Fikrym2021/figma_desain/main/assets/images/Main%20Avatar.png',
              size: 26,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

Widget _getSelectedBody(SelectedBody selectedBody) {
  switch (selectedBody) {
    case SelectedBody.home:
      return Center(child: Text('Home Screen'));
    case SelectedBody.search:
      return Center(child: Text('Search Screen'));
    case SelectedBody.reels:
      return Center(child: Text('Reels Screen'));
    case SelectedBody.shop:
      return Center(child: Text('Shop Screen'));
    case SelectedBody.profile:
      return ProfileScreen();
    default:
      return SizedBox.shrink();
  }
}
