import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:porfolio/Pages/about_page.dart';
import 'package:porfolio/Pages/certificate.dart';
import 'package:porfolio/Pages/contact.dart';
import 'package:porfolio/Pages/drawer.dart';
import 'package:porfolio/Pages/home_page.dart';
import 'package:porfolio/Pages/projects.dart';
import 'package:porfolio/Pages/skill_page.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {

  // bool isDesktop(BuildContext context) =>
  // MediaQuery.of(context).size.width > 600;
  //
  // bool isMobile(BuildContext context) =>
  //     MediaQuery.of(context).size.width < 600;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('Shahab',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
            ),),
            SizedBox(
              width: 5.0,
            ),
            Text('Mustafa',
              style: TextStyle(
                fontSize: 20,
                color: Colors.redAccent,
            ),),

          ],
        )
      ),
      drawer: DrawerPage(),
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 1,
          itemBuilder: (context,index){
          return AnimationConfiguration.staggeredList(
              position: index,
              duration: Duration(seconds: 4),
              child: SlideAnimation(
                verticalOffset: 300.0,
                child: FadeInAnimation(
                  child: Column(
                    children: const [
                      HomePage(),
                      AboutPage(),
                      SkillsPage(),
                      Projects(),
                      Certificate(),
                      Contact(),
                    ],
                  ),
                ),
              ),
          );
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.arrow_upward_rounded),
      ),
    );
  }
}

class CVPage extends StatefulWidget {
  const CVPage({Key? key}) : super(key: key);

  @override
  State<CVPage> createState() => _CVPageState();
}

class _CVPageState extends State<CVPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("images/cv.jpg")),
    );
  }
}
