import 'package:duolingo_clone/screens/what_to_learn.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Profile",
                  style: TextStyle(fontSize: 22, color: Colors.grey),
                ),
              ),
            ),
            Divider(
              thickness: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Vinayak Ranjane",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(1000),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.edit_note_outlined,
                      color: Colors.grey,
                      size: 35,
                    ),
                  ),
                )
              ],
            ),
            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Statistics",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            // Container(
            //   height: 150,
            //   color: Colors.blue,
            //   child: GridView.count(
            //       primary: false,
            //       shrinkWrap: true,
            //       padding: const EdgeInsets.all(8),
            //       crossAxisSpacing: 16,
            //       mainAxisSpacing: 16,
            //       crossAxisCount: 2,
            //       children: [

            //       ]),
            // )
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      // height: 50,
                      width: 150,
                      child: BorderedContainer(
                          margin: 0,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/streak.png",
                                height: 25,
                                width: 25,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "2",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    "Day Streak",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150,
                      child: BorderedContainer(
                          margin: 0,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/gems.png",
                                height: 25,
                                width: 25,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "200",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      "Total XP",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150,
                      child: BorderedContainer(
                          margin: 0,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/rice.png",
                                height: 25,
                                width: 25,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "20 mins",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      "Max Duration",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150,
                      child: BorderedContainer(
                          margin: 0,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/streak.png",
                                height: 25,
                                width: 25,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "2",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    "Day Streak",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Achievements",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            BorderedContainer(
                radius: 16,
                child: Column(
                  children: [
                    DailyQuestCard(
                        context: context, imageAsset: "assets/streak.png"),
                    Divider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    DailyQuestCard(
                        context: context,
                        imageAsset: "assets/gems.png",
                        color: Colors.purple),
                    Divider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    DailyQuestCard(
                        context: context,
                        imageAsset: "assets/trophy.png",
                        color: Colors.blue),
                    // Divider(
                    //   color: Colors.grey,
                    //   thickness: 2,
                    // )
                  ],
                ))
          ],
        ),
      )),
    );
  }

  Row DailyQuestCard(
      {required BuildContext context,
      required String imageAsset,
      Color color = Colors.red}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FancyButton(
            child: Image.asset(
              imageAsset,
              height: 70,
              width: 70,
            ),
            size: 30,
            circle: true,
            color: color,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "WildFire",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Reach a 3 day Streak",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.centerStart,
                  children: [
                    FancyButton(
                      child: Container(
                        height: 5,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      size: 6,
                      circle: true,
                      color: Colors.grey,
                    ),
                    FancyButton(
                      child: Container(
                        height: 7,
                        width: MediaQuery.of(context).size.width * 0.4 * (0.5),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      size: 10,
                      circle: true,
                      color: Colors.amber,
                    )
                  ],
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "2/3",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
