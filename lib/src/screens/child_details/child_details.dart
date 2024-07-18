import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChildDetails extends StatefulWidget {
  final String imageURL;
  final String old;
  final String name;
  final DateTime barthDate;
  const ChildDetails({
    super.key,
    required this.imageURL,
    required this.old,
    required this.name,
    required this.barthDate,
  });

  @override
  State<ChildDetails> createState() => _ChildDetailsState();
}

class _ChildDetailsState extends State<ChildDetails> {
  List<Map> listOfVaccine = [
    {
      "name": "BCG",
      "fullMeaning": "Bacille Calmette-Guérin",
      "note": "",
      "doseCount": 1,
      "timing": [0],
      "unit": 1,
      "complete": 1,
    },
    {
      "name": "OPV",
      "fullMeaning": "Oral Polio Vaccine",
      "note": "",
      "doseCount": 4,
      "timing": [0, 6, 10, 14],
      "unit": 7, // 7 means 1 week = 7 days
      "complete": 2,
    },
    {
      "name": "PV",
      "fullMeaning": "Pentavalent Vaccine",
      "note": "",
      "doseCount": 3,
      "timing": [6, 10, 14],
      "unit": 7,
      "complete": 1,
    },
    {
      "name": "PCV",
      "fullMeaning": "Pneumococcal Conjugate Vaccine",
      "note": "",
      "doseCount": 3,
      "timing": [6, 10, 14],
      "unit": 7,
      "complete": 1,
    },
    {
      "name": "IPV",
      "fullMeaning": "Inactivated Polio Vaccine",
      "note": "",
      "doseCount": 1,
      "timing": [14],
      "unit": 7,
      "complete": 0,
    },
    {
      "name": "MR",
      "fullMeaning": "Measles and Rubella",
      "note": "",
      "doseCount": 2,
      "timing": [9, 15],
      "unit": 30, // 30 means 1 month = 30 days
      "complete": 0,
    },
    {
      "name": "RV",
      "fullMeaning": "Rotavirus Vaccine",
      "note": "",
      "doseCount": 2,
      "timing": [6, 10],
      "unit": 7,
      "complete": 1,
    },
    {
      "name": "TT",
      "fullMeaning": "Tetanus Toxoid",
      "note": "for Pregnant Women",
      "doseCount": 2,
      "timing": [-1, -1], // -1 means during ppregnancy
      "unit": 7,
      "complete": 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vacciens Details"),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          size: 30,
          color: Colors.white,
        ),
      ),
      endDrawer: const Drawer(),
      extendBodyBehindAppBar: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            widget.old,
                            style: const TextStyle(
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
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(
                            fontSize: 18,
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
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  listOfVaccine.length,
                  (index) {
                    bool isWarning = listOfVaccine[index]['doseCount'] !=
                        listOfVaccine[index]['complete'];

                    return Container(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: const UnderlineTabIndicator(
                        insets: EdgeInsets.only(left: 50, right: 50),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: isWarning
                            ? () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      insetPadding: const EdgeInsets.all(5),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              radius: 35,
                                              backgroundColor:
                                                  Colors.blue.shade900,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(15.0),
                                                child: Image.asset(
                                                    "assets/vaccination.png"),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: Colors.grey
                                                    .withOpacity(0.4),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  const Text(
                                                    "Vaccine: ",
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                  const Gap(10),
                                                  Text(
                                                    listOfVaccine[index]
                                                        ['name'],
                                                    style: const TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: Colors.grey
                                                    .withOpacity(0.4),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  const Text(
                                                    "Date:",
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                  const Gap(40),
                                                  Text(
                                                    DateTime.now()
                                                        .add(
                                                          Duration(
                                                            days: listOfVaccine[
                                                                        index]
                                                                    ['unit'] *
                                                                listOfVaccine[
                                                                            index]
                                                                        [
                                                                        'timing']
                                                                    [
                                                                    listOfVaccine[
                                                                            index]
                                                                        [
                                                                        'complete']],
                                                          ),
                                                        )
                                                        .toIso8601String()
                                                        .split('T')[0],
                                                    style: const TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: Colors.grey
                                                    .withOpacity(0.4),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  const Text(
                                                    "Local:",
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                  const Gap(35),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.5,
                                                    child: const Text(
                                                      "Bangladesh, Tangail, Tangail Thana, Anuhala, Uttor Hugra, Uttor Hugra Primary School, Hugra",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Gap(10),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.blue,
                                                shadowColor: Colors.transparent,
                                                minimumSize:
                                                    const Size(300, 50),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    8,
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                                listOfVaccine[index]
                                                    ['complete']++;
                                                setState(() {});
                                              },
                                              child: const Text(
                                                "Done Vaccination",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            const Gap(10),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }
                            : null,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            isWarning
                                ? Container(
                                    width: 50,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.red.shade600,
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        bottomRight: Radius.circular(100),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.warning_amber_rounded,
                                      color: Colors.white,
                                    ),
                                  )
                                : const SizedBox(
                                    width: 50,
                                    height: 40,
                                  ),
                            const Gap(10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  listOfVaccine[index]['name'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Text(
                                    listOfVaccine[index]['fullMeaning'],
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                ),
                                if (isWarning)
                                  Text(
                                    "Next: ${DateTime.now().add(
                                          Duration(
                                            days: listOfVaccine[index]['unit'] *
                                                listOfVaccine[index]['timing'][
                                                    listOfVaccine[index]
                                                        ['complete']],
                                          ),
                                        ).toIso8601String().split('T')[0]}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.red.shade700,
                                    ),
                                  ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    "Dose",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Gap(5),
                                Row(
                                  children: [
                                    Row(
                                      children: List.generate(
                                        listOfVaccine[index]['complete'],
                                        (i) {
                                          return Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: CircleAvatar(
                                              radius: 10,
                                              backgroundColor:
                                                  Colors.green.shade600,
                                              child: const Icon(
                                                Icons.done_rounded,
                                                size: 19,
                                                color: Colors.white,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Row(
                                      children: List.generate(
                                        listOfVaccine[index]['doseCount'] -
                                            listOfVaccine[index]['complete'],
                                        (i) {
                                          return const Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: CircleAvatar(
                                              radius: 10,
                                              backgroundColor: Colors.grey,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Gap(30),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
