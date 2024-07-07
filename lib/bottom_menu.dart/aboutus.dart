import 'package:flutter/material.dart';

class AboutUS extends StatelessWidget {
  const AboutUS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "เกี่ยวกับเรา",
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
                'บริษัท..............................',
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'มีเนื้อหามีเนื้อหามีเนื้อหามีเนื้อหามีเนื้อหามีเนื้อหามีเนื้อหามีเนื้อหามีเนื้อหามีเนื้อหา'),
              ),
              Text('ที่อยู่...................'),
            ],
          ),
        ),
      ),
    );
  }
}
