import 'package:flutter/material.dart';
// import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/pages/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            // 'assets/images/men.png',
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                // 'Joshuer',
                style: titleTextStyle,
              ),
              Text(
                text,
                // 'Sorry, you’re not my ty...',
                style: unread
                    ? subtitleTextStyle.copyWith(
                        color: blackColor,
                      )
                    : subtitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            // 'Now',
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }
}
