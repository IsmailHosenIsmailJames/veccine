import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:veccine/src/screens/child_details/child_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 30,
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.add,
                size: 40,
                color: Colors.blue,
              ),
            ),
            Gap(5),
            Text(
              "vaccine",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      endDrawer: const Drawer(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topCenter,
            colors: [Colors.blue, Colors.blue.shade800],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: const Divider(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                    left: 20, top: 20, bottom: 5, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChildDetails(
                              imageURL: "assets/bangladesh_2_with_credit.jpg",
                              old: "11 years",
                              name: "Jakariya Islam",
                              barthDate: DateTime(2013, 7, 15),
                            ),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 120,
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                "assets/bangladesh_2_with_credit.jpg",
                              ),
                            ),
                            const Gap(10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Jakariya Islam",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                Text(
                                  "11 years",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.grey,
                                size: 34,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChildDetails(
                              imageURL:
                                  "assets/adorable-baby-with-vibrant-clothing-in-a-playful-pose-ai-generative-photo.jpg",
                              old: "9 Months",
                              name: "Amina Akter",
                              barthDate: DateTime(2023, 10, 15),
                            ),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 120,
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                  "assets/adorable-baby-with-vibrant-clothing-in-a-playful-pose-ai-generative-photo.jpg"),
                            ),
                            const Gap(10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Amina Akter",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                Text(
                                  "9 Months",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.grey,
                                size: 34,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                style: IconButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                icon: Icon(
                  FluentIcons.people_add_32_filled,
                  size: 36,
                  color: Colors.blue.shade900,
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.lightBlue,
                          ),
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/vaccination.png",
                          ),
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        "VACCINES",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.lightBlue,
                            ),
                            onPressed: () {},
                            icon: Image.asset("assets/announcement.png")),
                      ),
                      const Gap(10),
                      const Text(
                        "Campaign",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
              const Gap(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.lightBlue,
                          ),
                          onPressed: () {},
                          icon: Image.asset("assets/location.png"),
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        "MAPS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.lightBlue,
                            ),
                            onPressed: () {},
                            icon: Image.asset("assets/setting.png")),
                      ),
                      const Gap(10),
                      const Text(
                        "SETTINGS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
