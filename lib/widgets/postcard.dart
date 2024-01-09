import 'package:facebook/sections/headerbuttonsection.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/headerbutton.dart';
import 'package:flutter/material.dart';

class Postcard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String posttitle;
  final String postimage;
  final bool Showbluetick;
  final String likecount;
  final String sharecount;
  final String commentcount;

  Postcard({
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.posttitle,
    required this.postimage,
    this.Showbluetick = false,
    required this.likecount,
    required this.sharecount,
    required this.commentcount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Postcardheader(),
          Titlesection(),
          Imagesection(),
          Footersection(),
          Headerbuttonsection(
            buttonone: Headerbutton(
                buttontext: "Like",
                buttonicon: Icons.thumb_up,
                buttonaction: (){},
                buttoncolour: Colors.grey),
            buttontwo: Headerbutton(
                buttontext: "Comment",
                buttonicon: Icons.message_outlined,
                buttonaction: (){},
                buttoncolour: Colors.grey),
            buttonthree: Headerbutton(
                buttontext: "Share",
                buttonicon: Icons.share,
                buttonaction: (){},
                buttoncolour: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget Footersection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                displaytext(label: likecount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displaytext(label: commentcount),
                SizedBox(
                  width: 5,
                ),
                displaytext(label: "comments"),
                SizedBox(
                  width: 10,
                ),
                displaytext(label: sharecount),
                SizedBox(
                  width: 5,
                ),
                displaytext(label: "shares"),
                SizedBox(
                  width: 10,
                ),
                Avatar(
                  displayimage: avatar,
                  displaystatus: false,
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: 1,
                ),
                IconButton(
                  onPressed: () {
                    print("Drop down pressed!!");
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displaytext({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget Imagesection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postimage),
    );
  }

  Widget Titlesection() {
    return posttitle!= null && posttitle!= "" ?
      Container(
        padding: EdgeInsets.only(bottom: 5),
        child: Text(
          posttitle == null ? "" : posttitle,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        )
      )
        :SizedBox();
  }

  Widget Postcardheader() {
    return ListTile(
      leading: Avatar(
        displayimage: avatar,
        displaystatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          Showbluetick ? Bluetick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(width: 10),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {
            print("Open more menu");
          },
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
          )),
    );
  }
}
