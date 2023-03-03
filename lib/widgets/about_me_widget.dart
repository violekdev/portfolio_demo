import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  final Color? bgColor;
  const AboutMeWidget({
    Key? key,
    this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      height: 800, //961
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Text(
                'ABOUT ME',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Colors.white10,
                    ),
              ),
              Text(
                'Know Me More',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                fit: FlexFit.loose,
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Im , a Cyber Security Engineer",
                      style: Theme.of(context).textTheme.headlineSmall,
                      softWrap: true,
                    ),
                    Text(
                      "Cyber Security Engineer with a wide skill set in different IT domains, Cloud enthusiast with strong development skills on AWS services.",
                      style: Theme.of(context).textTheme.headlineSmall,
                      softWrap: true,
                    ),
                    Text(
                      "I also keep learning new technologies have wide knowledge in software, IT infrastructure, cloud, and DevOps, to keep the IT infrastructure and different technologies secure.",
                      style: Theme.of(context).textTheme.headlineSmall,
                      softWrap: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 45),
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name: ",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const Divider(endIndent: 160),
                    const Text("Email: @gmail.com"),
                    const Divider(endIndent: 160),
                    const Text("Age: 24"),
                    const Divider(endIndent: 160),
                    const Text("From: "),
                    const SizedBox(height: 45),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Download my CV'),
                    ),
                  ],
                ),
              )
            ],
          ),
          IntrinsicHeight(
            child: Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Text(
                        "4+",
                        style: Theme.of(context).textTheme.headlineMedium,
                        softWrap: true,
                      ),
                      Text(
                        "Years of Experience",
                        style: Theme.of(context).textTheme.headlineSmall,
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
                // const SizedBox(width: 45),
                const VerticalDivider(
                  width: 45,
                  thickness: 1,
                  color: Colors.black,
                ),
                Flexible(
                  child: Column(
                    children: [
                      Text(
                        "10+",
                        style: Theme.of(context).textTheme.headlineMedium,
                        softWrap: true,
                      ),
                      Text(
                        "Courses & Certificates",
                        style: Theme.of(context).textTheme.headlineSmall,
                        softWrap: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
