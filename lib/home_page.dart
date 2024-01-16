import 'package:flutter/material.dart';

import 'widgets/container_body.dart';
import 'widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Padding(
        padding: EdgeInsets.only(top: 80.0),
        child: Column(
          children: [
            Header(),
            SizedBox(height: 40),
            ContainerBody(
              children: [
                
              ],
            )
          ],
        ),
      ),
    );
  }
}