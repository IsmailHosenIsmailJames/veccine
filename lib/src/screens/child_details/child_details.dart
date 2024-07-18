import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChildDetails extends StatefulWidget {
  final String imageURL;
  final String old;
  final String name;
  const ChildDetails({
    super.key,
    required this.imageURL,
    required this.old,
    required this.name,
  });

  @override
  State<ChildDetails> createState() => _ChildDetailsState();
}

class _ChildDetailsState extends State<ChildDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          size: 30,
          color: Colors.white,
        ),
      ),
      endDrawer: const Drawer(),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.blue, Colors.blue.shade900],
              ),
            ),
            child: Column(
              children: [
                const Gap(95),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Divider(
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                ),
                const Gap(20),
                Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(widget.imageURL),
                      ),
                      const Gap(10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Joao Carlos Ferreira",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "11 years",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 34,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(30),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Veccines",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Gap(5),
                          Text(
                            "Adicionar",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Gap(10),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(),
          ),
        ],
      ),
    );
  }
}

List<Map> listOfVaccine = [
  {
    "name": "BCG (Bacille Calmette-Guérin)",
    "doseCount": 1,
    "timing": [0],
    "unit": 1,
    "complete": 1,
  },
  {
    "name": "OPV (Oral Polio Vaccine)",
    "doseCount": 4,
    "timing": [0, 6, 10, 14],
    "unit": 7, // 7 means 1 week = 7 days
    "complete": 2,
  },
  {
    "name": "Pentavalent Vaccine",
    "doseCount": 3,
    "timing": [6, 10, 14],
    "unit": 7,
    "complete": 1,
  },
  {
    "name": "PCV (Pneumococcal Conjugate Vaccine)",
    "doseCount": 3,
    "timing": [6, 10, 14],
    "unit": 7,
    "complete": 1,
  },
  {
    "name": "IPV (Inactivated Polio Vaccine)",
    "doseCount": 1,
    "timing": [14],
    "unit": 7,
    "complete": 0,
  },
  {
    "name": "MR (Measles and Rubella)",
    "doseCount": 2,
    "timing": [9, 15],
    "unit": 30, // 30 means 1 month = 30 days
    "complete": 0,
  },
  {
    "name": "Rotavirus Vaccine",
    "doseCount": 2,
    "timing": [6, 10],
    "unit": 7,
    "complete": 1,
  },
  {
    "name": "TT (Tetanus Toxoid) for Pregnant Women",
    "doseCount": 2,
    "timing": [-1, -1], // -1 means during ppregnancy
    "unit": 7,
    "complete": 2,
  },
];
