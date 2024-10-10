import 'package:myapp/pages/course_detail_page.dart';


import 'package:myapp/pages/onboarding_page.dart';
import 'package:myapp/pages/onboarding_page0.dart';
import 'package:myapp/pages/onboarding_page1.dart';
import 'package:myapp/pages/onboarding_page2.dart';
import 'package:myapp/pages/onboarding_page3.dart';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';


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
    
    Onboarding0Page(
        pages: [
          Onboarding0PageModel(
            title: 'CURSOS',
            description:
                'El conocimiento te acerca a la verdad.',
            image: 'assets/images/LOGOSCURSO6.png',
            bgColor: const Color.fromARGB(255, 32, 151, 210),
          ),
          Onboarding0PageModel(
            title: 'FORMACION',
            description: 'La fe se fortalece con la comprensión.',
            image: 'assets/images/LOGOSCURSO1.png',
            bgColor: const Color(0xff1eb090),
          ),
          Onboarding0PageModel(
            title: 'ESTUDIO',
            description:
                'El estudio espiritual es un viaje de crecimiento personal.',
            image: 'assets/images/LOGOSCURSO2.png',
            bgColor: const Color(0xfffeae4f),
          ),
          Onboarding0PageModel(
            title: 'CONOCIMIENTO',
            description: 'La sabiduría divina ilumina el camino.',
            image: 'assets/images/LOGOSCURSO4.png',
            bgColor: Colors.purple,
          ),
        ],
      ),
    
    //--------------------------------
    //const HomePage(),
    //-----------------------------------
    OnboardingPage(
        pages: [
          OnboardingPageModel(
            title: 'HIMNOS',
            description:
                'Enjoy the best of the world in the palm of your hands.',
            image: 'assets/images/LOGOSHIMNOS5.png',
            bgColor: const Color.fromARGB(255, 222, 137, 69),
          ),
          OnboardingPageModel(
            title: 'Connect with your friends.',
            description: 'Connect with your friends anytime anywhere.',
            image: 'assets/images/LOGOSHIMNOS4.png',
            bgColor: const Color.fromARGB(255, 174, 128, 75),
          ),
          OnboardingPageModel(
            title: 'Bookmark your favourites',
            description:
                'Bookmark your favourite quotes to read at a leisure time.',
            image: 'assets/images/LOGOSHIMNOS2.png',
            bgColor: const Color.fromARGB(255, 196, 98, 62),
          ),
          OnboardingPageModel(
            title: 'Follow creators',
            description: 'Follow your favourite creators to stay in the loop.',
            image: 'assets/images/LOGOSHIMNOS3.png',
            bgColor: const Color.fromARGB(255, 122, 76, 6),
          ),
        ],
      ),
    //-----------------------------------
    //-----------------------------------
    Onboarding1Page(
        pages: [
          Onboarding1PageModel(
            title: 'IGLESIA',
            description:
                'Un lugar de esperanza, fe y amor en Cristo.',
            image: 'assets/images/ibbrLogo.png',
            bgColor: Colors.indigo,
          ),
          Onboarding1PageModel(
            title: 'REUNIONES',
            description: 'Unidos en oración, fortalecidos en comunidad',      
            image: 'assets/images/reuniones3.png',
            bgColor: const Color.fromARGB(255, 44, 62, 165),
          ),
          Onboarding1PageModel(
            title: 'Bookmark your favourites',
            description:
                'Bookmark your favourite quotes to read at a leisure time.',
            image: 'assets/images/image2.png',
            bgColor: const Color(0xfffeae4f),
          ),
          Onboarding1PageModel(
            title: 'Follow creators',
            description: 'Follow your favourite creators to stay in the loop.',
            image: 'assets/images/paloma.png',
            bgColor: Colors.purple,
          ),
        ],
      ),
    //-----------------------------------
    //-----------------------------------
    Onboarding2Page(
        pages: [
          Onboarding2PageModel(
            title: 'BIBLIOTECA',
            description:
                'Enjoy the best of the world in the palm of your hands.',
            image: 'assets/images/Biblio4.png',
            bgColor: const Color.fromARGB(255, 112, 63, 181),
          ),
          Onboarding2PageModel(
            title: 'Connect with your friends.',
            description: 'Connect with your friends anytime anywhere.',
            image: 'assets/images/Biblio2.png',
            bgColor: const Color(0xff1eb090),
          ),
          Onboarding2PageModel(
            title: 'Bookmark your favourites',
            description:
                'Bookmark your favourite quotes to read at a leisure time.',
            image: 'assets/images/Biblio3.png',
            bgColor: const Color(0xfffeae4f),
          ),
          Onboarding2PageModel(
            title: 'Follow creators',
            description: 'Follow your favourite creators to stay in the loop.',
            image: 'assets/images/Biblio.png',
            bgColor: Colors.purple,
          ),
        ],
      ),
    //-----------------------------------
    //-----------------------------------
    Onboarding3Page(
        pages: [
          Onboarding3PageModel(
            title: 'SERMONES',
            description:
                'Enjoy the best of the world in the palm of your hands.',
            image: 'assets/images/sermones2.png',
            bgColor: const Color.fromARGB(255, 181, 63, 79),
          ),
          Onboarding3PageModel(
            title: 'Connect with your friends.',
            description: 'Connect with your friends anytime anywhere.',
            image: 'assets/images/sermones3.png',
            bgColor: const Color(0xff1eb090),
          ),
          Onboarding3PageModel(
            title: 'Bookmark your favourites',
            description:
                'Bookmark your favourite quotes to read at a leisure time.',
            image: 'assets/images/sermones4.png',
            bgColor: const Color(0xfffeae4f),
          ),
          Onboarding3PageModel(
            title: 'Follow creators',
            description: 'Follow your favourite creators to stay in the loop.',
            image: 'assets/images/sermones5.png',
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
