import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color.fromARGB(255, 122, 182, 231),
          ),
          backgroundColor: Colors.blue[400],
          title: const Icon(
            Icons.account_circle_sharp,
            size: 40,
            color: Colors.white,
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildContainer('Hello 1'),
                _buildContainer('Hello 2'),
                _buildContainer('Hello 3'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildContainer('Hello 4'),
                _buildContainer('Hello 5'),
                _buildContainer('Hello 6'),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildContainer('Hello 7'),
                _buildContainer('Hello 8'),
                _buildContainer('Hello 9'),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildContainer(String text) {
  return Container(
    color: Colors.blue,
    height: 80,
    width: 80,
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(10),
    child: Column(
      children: [
       const Icon(
          Icons.access_alarm_outlined,
          color: Colors.white,
        ),
        Text(text, style: const TextStyle(color: Colors.white)),
      ],
    ),
  );
}
