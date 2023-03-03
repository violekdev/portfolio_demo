import 'package:flutter/material.dart';
import 'package:portfolio_demo/widgets/about_me_widget.dart';
import 'package:portfolio_demo/widgets/home_widget.dart';
import 'package:portfolio_demo/widgets/resume_widget.dart';
import 'package:portfolio_demo/widgets/side_nav_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final aboutKey = GlobalKey();
  final homeKey = GlobalKey();
  final resumeKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.horizontal,
        children: [
          Flexible(
              flex: 1,
              child: SideNavDrawer(
                aboutKey: aboutKey,
                homeKey: homeKey,
                resumeKey: resumeKey,
              )),
          Flexible(
            flex: 7,
            child: SingleChildScrollView(
                child: Column(
              children: [
                HomeWidget(key: homeKey),
                AboutMeWidget(bgColor: Colors.black26, key: aboutKey),
                ResumeWidget(bgColor: Colors.red, key: resumeKey),
              ],
            )),
          )
        ],
      ),
    );
  }
}
