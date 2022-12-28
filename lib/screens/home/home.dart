import 'package:duolingo_clone/main.dart';
import 'package:duolingo_clone/screens/home/start_game.dart';
import 'package:duolingo_clone/screens/what_to_learn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int completedChaps = 2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // floatingActionButton: Visibility(
        //   child: FloatingActionButton(
        //     onPressed: () {},
        //   ),
        // ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/japan.png",
                    height: 40,
                    width: 40,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/streak.png",
                        height: 25,
                        width: 25,
                      ),
                    ),
                    Text(
                      "2",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/gems.png",
                        height: 25,
                        width: 25,
                      ),
                    ),
                    Text(
                      "200",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                )
              ],
            ),
            Divider(
              thickness: 3,
            ),
            Expanded(
              child: PageView.builder(
                itemCount: 2,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return pageViewCard(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Container pageViewCard(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.11,
            // color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Unit 1",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          "Order food, describe people ",
                          style: TextStyle(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
                BorderedContainer(
                  color: Color.fromARGB(255, 28, 36, 41),
                  radius: 16,
                  child: Icon(
                    Icons.book,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
                  width: double.maxFinite,
                  color: Color.fromARGB(255, 28, 36, 41),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        chapterCard(index: 0),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: chapterCard(
                            alignment: Alignment.topLeft,
                            index: 1,
                          ),
                        ),
                        chapterCard(index: 2),
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: chapterCard(
                              alignment: Alignment.topRight, index: 3),
                        ),
                        chapterCard(index: 4),
                      ],
                    ),
                  ))),
          Container(
            height: MediaQuery.of(context).size.height * 0.02,
            // color: Colors.grey,
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Align chapterCard(
      {AlignmentGeometry alignment = Alignment.center, int index = 0}) {
    return Align(
      alignment: alignment,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Visibility(
              visible: index <= completedChaps,
              child: SizedBox(
                height: 75,
                width: 75,
                child: CircularProgressIndicator(
                  value: 0.4,
                  strokeWidth: 8,
                  color: Colors.yellow,
                  backgroundColor: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: index <= completedChaps
                  ? FancyButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const StartGameScreen(),
                            ));
                      },
                      child: Icon(
                        Icons.star_rate_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                      size: 35,
                      circle: true,
                      color: Colors.lightGreen)
                  : FancyButton(
                      // onPressed: () {
                      //   print("Tapped on the button");
                      // },
                      child: Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 35,
                      ),
                      size: 75,
                      circle: true,
                      color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
