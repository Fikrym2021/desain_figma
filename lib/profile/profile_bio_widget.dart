import 'package:flutter/material.dart';

class ProfileBioWidget extends StatelessWidget {
  const ProfileBioWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fikrymuddhirulhaq',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 3),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontFamily: 'Inter',
                color: Colors.black,
                fontSize: 13,
              ),
              children: [
                TextSpan(text: 'Fikrymuddhirulhaq'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
