import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:project_work/bottom_menu.dart/aboutus.dart';
import 'package:project_work/bottom_menu.dart/news.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  List<String> Sliders = [
    'images/slide1.jpg',
    'images/slide2.jpg',
    'images/slide3.jpg',
    'images/slide4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/bus.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                'เมนู',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              onTap: (() {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => News()));
              }),
              title: Text('ข่าวสาร'),
            ),
            ListTile(
              onTap: (() {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AboutUS()));
              }),
              title: Text('เกี่ยวกับเรา'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Third Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF82B1FF),
      ),
      body: Container(
        child: Swiper(
            itemCount: Sliders.length,
            itemBuilder: (context, index) => Image.asset(Sliders[index])),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          backgroundColor: Color(0xFF82B1FF),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
          ]),
    );
  }
}
