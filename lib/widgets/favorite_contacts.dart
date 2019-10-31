import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';

class FavoriteContacts extends StatefulWidget {
  @override
  _FavoriteContacts createState() => _FavoriteContacts();
}

class _FavoriteContacts extends State<FavoriteContacts> {
  int selectedIndex = 0;
  final List<String> categories = ['Message', 'Online', 'Group', 'Request'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Favorite Contacts",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 14.0),
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(favorites[index].imageUrl)),
                      SizedBox(height: 6.0),
                      Text(
                        favorites[index].name,
                        style: TextStyle(color: Colors.blueGrey, fontSize: 12.0, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
