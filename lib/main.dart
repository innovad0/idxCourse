import 'package:myapp/pages/course_detail_page.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/list_course';
import 'package:myapp/pages/onboarding_page.dart';
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
    //-----------------------------------
    OnboardingPage(
        pages: [
          OnboardingPageModel(
            title: 'HIMNOS',
            description:
                'Enjoy the best of the world in the palm of your hands.',
            image: 'assets/images/ibbrLogo.png',
            bgColor: const Color.fromARGB(255, 118, 181, 63),
          ),
          OnboardingPageModel(
            title: 'Connect with your friends.',
            description: 'Connect with your friends anytime anywhere.',
            image: 'assets/images/image1.png',
            bgColor: const Color(0xff1eb090),
          ),
          OnboardingPageModel(
            title: 'Bookmark your favourites',
            description:
                'Bookmark your favourite quotes to read at a leisure time.',
            image: 'assets/images/image2.png',
            bgColor: const Color(0xfffeae4f),
          ),
          OnboardingPageModel(
            title: 'Follow creators',
            description: 'Follow your favourite creators to stay in the loop.',
            image: 'assets/images/paloma.png',
            bgColor: Colors.purple,
          ),
        ],
      ),
    //-----------------------------------
    //-----------------------------------
    OnboardingPage(
        pages: [
          OnboardingPageModel(
            title: 'IGLESIA BAUTISTA BIBLICA BOCA DEL RIO',
            description:
                'Enjoy the best of the world in the palm of your hands.',
            image: 'assets/images/ibbrLogo.png',
            bgColor: Colors.indigo,
          ),
          OnboardingPageModel(
            title: 'Connect with your friends.',
            description: 'Connect with your friends anytime anywhere.',
            image: 'assets/images/image1.png',
            bgColor: const Color(0xff1eb090),
          ),
          OnboardingPageModel(
            title: 'Bookmark your favourites',
            description:
                'Bookmark your favourite quotes to read at a leisure time.',
            image: 'assets/images/image2.png',
            bgColor: const Color(0xfffeae4f),
          ),
          OnboardingPageModel(
            title: 'Follow creators',
            description: 'Follow your favourite creators to stay in the loop.',
            image: 'assets/images/paloma.png',
            bgColor: Colors.purple,
          ),
        ],
      ),
    //-----------------------------------
    //-----------------------------------
    OnboardingPage(
        pages: [
          OnboardingPageModel(
            title: 'BIBLIOTECA',
            description:
                'Enjoy the best of the world in the palm of your hands.',
            image: 'assets/images/ibbrLogo.png',
            bgColor: Color.fromARGB(255, 112, 63, 181),
          ),
          OnboardingPageModel(
            title: 'Connect with your friends.',
            description: 'Connect with your friends anytime anywhere.',
            image: 'assets/images/image1.png',
            bgColor: const Color(0xff1eb090),
          ),
          OnboardingPageModel(
            title: 'Bookmark your favourites',
            description:
                'Bookmark your favourite quotes to read at a leisure time.',
            image: 'assets/images/image2.png',
            bgColor: const Color(0xfffeae4f),
          ),
          OnboardingPageModel(
            title: 'Follow creators',
            description: 'Follow your favourite creators to stay in the loop.',
            image: 'assets/images/paloma.png',
            bgColor: Colors.purple,
          ),
        ],
      ),
    //-----------------------------------
    //-----------------------------------
    OnboardingPage(
        pages: [
          OnboardingPageModel(
            title: 'PREDICAS',
            description:
                'Enjoy the best of the world in the palm of your hands.',
            image: 'assets/images/ibbrLogo.png',
            bgColor: Color.fromARGB(255, 181, 63, 79),
          ),
          OnboardingPageModel(
            title: 'Connect with your friends.',
            description: 'Connect with your friends anytime anywhere.',
            image: 'assets/images/image1.png',
            bgColor: const Color(0xff1eb090),
          ),
          OnboardingPageModel(
            title: 'Bookmark your favourites',
            description:
                'Bookmark your favourite quotes to read at a leisure time.',
            image: 'assets/images/image2.png',
            bgColor: const Color(0xfffeae4f),
          ),
          OnboardingPageModel(
            title: 'Follow creators',
            description: 'Follow your favourite creators to stay in the loop.',
            image: 'assets/images/paloma.png',
            bgColor: Colors.purple,
          ),
        ],
      ),
    //-----------------------------------
    
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
      backgroundColor: Colors.blueAccent,
      unselectedItemColor: Colors.black54,
      selectedItemColor: Colors.white,
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: const [
          BottomNavigationBarItem(icon: Icon(IconlyBold.play), label: "Cursos"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.folder), label: "Himnos"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.chart), label: "Biblioteca"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.profile), label: "Predicas"),
      ],
    );
  }

}
