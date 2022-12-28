import 'package:duolingo_clone/main.dart';
import "package:flutter/material.dart";

class DailyQuestScreen extends StatelessWidget {
  const DailyQuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Daily Quests",
                style: TextStyle(fontSize: 22, color: Colors.grey),
              ),
            ),
          ),
          Divider(
            thickness: 4,
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: DailyQuestCard(
                  context: context,
                  imageAsset:
                      index % 2 == 0 ? "assets/streak.png" : "assets/gems.png",
                  color: index % 2 != 0 ? Colors.purple : Colors.red,
                ),
              );
            },
          ))
        ],
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
                        width: MediaQuery.of(context).size.width * 0.5,
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
                        width: MediaQuery.of(context).size.width * 0.7 * (0.5),
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
