import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ข่าวสาร",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF82B1FF),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 25),
              Text(
                'วันนี้อากาศมีอุณหภูมิที่ 100 องศา',
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('มีเความคาfว่าจะร้อนเป็นอย่างมาก'),
              ),
              Text('ที่มา...................'),
            ],
          ),
        ),
      ),
    );
  }
}
