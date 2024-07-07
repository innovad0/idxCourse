import 'package:myapp/pages/course_detail_page.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/list_course';
import 'package:myapp/pages/videoTest.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:myapp/pages/video_test1.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainTabBarPage(),
      routes: {
        CourseDetailPage.routeName: (ctx) => const CourseDetailPage(),
      },
    )
  );
}

class MainTabBarPage extends StatefulWidget {
  const MainTabBarPage({super.key});

  @override
  State<MainTabBarPage> createState() => _MainTabBarPageState();
}

class _MainTabBarPageState extends State<MainTabBarPage> {
  int selectedIndex = 2;

  static List<Widget> tabBarPages = [
    const HomePage(),
    const VideoTest1(),
    ListCoursePage(),
    const HomePage(),
    const HomePage(),
    
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabBarPages[selectedIndex],
      bottomNavigationBar: bottomNavigationBar(context),
    );
  }

  BottomNavigationBar bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: const [
          BottomNavigationBarItem(icon: Icon(IconlyBold.play), label: "Cursos"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.buy), label: "Carrito"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.bookmark), label: "Mis cursos"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.profile), label: "Perfil"),
      ],
    );
  }

}
