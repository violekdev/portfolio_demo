import 'package:flutter/material.dart';

class SideNavDrawer extends StatelessWidget {
  final GlobalKey aboutKey;
  final GlobalKey homeKey;
  final GlobalKey resumeKey;
  const SideNavDrawer({
    Key? key,
    required this.aboutKey,
    required this.homeKey,
    required this.resumeKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              CircleAvatar(
                radius: 75,
                child: Icon(Icons.person),
              ),
              SizedBox(height: 16),
              Text('Krishna Bhandari'),
            ],
          ),
          Column(
            children: [
              TextButton(
                onPressed: () => Scrollable.ensureVisible(
                  homeKey.currentContext!,
                  curve: Curves.decelerate,
                  duration: const Duration(milliseconds: 500),
                ),
                child: const Text('home'),
              ),
              TextButton(
                onPressed: () => Scrollable.ensureVisible(
                  aboutKey.currentContext!,
                  curve: Curves.decelerate,
                  duration: const Duration(milliseconds: 500),
                ),
                child: const Text('about me'),
              ),
              TextButton(
                onPressed: () => Scrollable.ensureVisible(
                  resumeKey.currentContext!,
                  curve: Curves.decelerate,
                  duration: const Duration(milliseconds: 500),
                ),
                child: const Text('resume'),
              ),
              TextButton(onPressed: () {}, child: const Text('blog')),
              TextButton(onPressed: () {}, child: const Text('contact')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.whatshot)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.snapchat)),
            ],
          )
        ],
      ),
    );
  }
}
