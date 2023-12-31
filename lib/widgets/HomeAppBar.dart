import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFFFFFFFF),
          ),
          Padding(padding: EdgeInsets.only(
            left: 20
          ),
            child: Text(
              "GrowPal",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: Text(
              "7",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: Color(0xFFFFFFFF),
              ),
            ),

          ),
        ],
      ),
    );
  }
}
