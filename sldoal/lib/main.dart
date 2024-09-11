import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Custom UI')),
        body: Center(
          child: CustomBox(),
        ),
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Title 어쩌구 저쩌구',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            'Discription 어쩌구 저쩌구',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '시스템과 게시판',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '30분 전',
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                children: [
                  Icon(Icons.remove_red_eye, color: Colors.grey),
                  SizedBox(width: 4.0),
                  Text('56', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 16.0),
                  Icon(Icons.thumb_up, color: Colors.grey),
                  SizedBox(width: 4.0),
                  Text('12', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://example.com/image.jpg', // replace with your image URL
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
