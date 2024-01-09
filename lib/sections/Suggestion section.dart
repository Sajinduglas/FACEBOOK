import 'package:facebook/assets.dart';
import 'package:facebook/widgets/Suggestioncard.dart';
import 'package:flutter/material.dart';

class Suggestionsection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may know"),
            trailing: IconButton(
                onPressed: () {
                  print("More clicked");
                },
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey[700],
                )),
          ),
          Container(
            height: 320,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Suggestioncard(
                  avatar: Athulya,
                  name: 'athulya',
                  mutualFriends: '5 mutual friends',
                  addFriends: () {
                    print("request to friendship");
                  },
                  removefriend: () {
                    print("remove this person");
                  },
                ),
                Suggestioncard(
                  avatar: dicaprio,
                  name: 'Dicaprio',
                  mutualFriends: '1 mutual friends',
                  addFriends: () {
                    print("request to friendship");
                  },
                  removefriend: () {
                    print("remove this person");
                  },
                ),
                Suggestioncard(
                  avatar: mammootty1,
                  name: 'Mammootty',
                  mutualFriends: '1 mutual friends',
                  addFriends: () {
                    print("request to friendship");
                  },
                  removefriend: () {
                    print("remove this person");
                  },
                ),
                Suggestioncard(
                  avatar: srk,
                  name: 'SRK',
                  mutualFriends: '1 mutual friends',
                  addFriends: () {
                    print("request to friendship");
                  },
                  removefriend: () {
                    print("remove this person");
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
