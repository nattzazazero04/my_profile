import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image(
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://i.ytimg.com/vi/L2WgJgAULo8/maxresdefault.jpg'),
            ),
            Positioned(
                child: CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://sites.google.com/site/listofcatbreeds/_/rsrc/1552920625215/british-shorthair/brithshothaircat.jpg'),
            ))
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          title: Text("History"),
          subtitle: Text(
              "There is some confusion about the origins of the domestic cat, with researchers arguing about where and when in time cats were domesticated. Some scientists even argue that cats domesticated themselves. Read on to find out about the different theories."),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.mail),
          label: Text("Gift For Me"), color: Colors.blue,
        ),
      ],
    );
  }
}
