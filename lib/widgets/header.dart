import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              'Welcome Tooni 👋',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white
              ),
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'What game would you like to play?',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 18.0),
        CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(
            'https://aiavatargpt.com/imgs/styles/women/lowres/Apex%20Legends.png',
          ),
        )
      ],
    );
  }
}
