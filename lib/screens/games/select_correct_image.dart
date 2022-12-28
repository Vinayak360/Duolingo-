import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:provider/provider.dart';

import '../../main.dart';
import '../../provider/select_correct_image_game.dart';
import '../home/start_game.dart';

class SelectCorrectImageGame extends StatelessWidget {
  const SelectCorrectImageGame({
    Key? key,
    // required this.selected,
    required this.values,
    required this.answer,
  }) : super(key: key);

  // final String? selected;
  final List<String> values;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Select the correct image",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FancyButton(
                      child: Icon(Icons.volume_up_rounded, size: 30),
                      size: 25,
                      onPressed: () async {
                        FlutterTts flutterTts = FlutterTts();
                        await flutterTts.setLanguage("ja");
                        await flutterTts.speak("すし");
                      },
                      color: Colors.blue.shade300),
                ),
                SizedBox(
                  width: 12,
                ),
                Tooltip(
                  message: "Sushi",
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Su shi",
                        style: TextStyle(
                            color: Color.fromARGB(255, 214, 119, 231)),
                      ),
                      Text(
                        "はい ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 214, 119, 231)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: GridView.count(
                    primary: false,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    crossAxisCount: 2,
                    children: <Widget>[
                      CustomBorderedButton(
                          selected: context.watch<ImageSelect>().selected,
                          onpressed: () {
                            context
                                .read<ImageSelect>()
                                .changeSelected(values[0]);
                          },
                          name: values[0],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/water.png",
                              // height: 100,
                              // width: 100,
                            ),
                          )),
                      CustomBorderedButton(
                          selected: context.watch<ImageSelect>().selected,
                          onpressed: () {
                            context
                                .read<ImageSelect>()
                                .changeSelected(values[1]);
                          },
                          name: values[1],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/sushi.png",
                              // height: 100,
                              // width: 100,
                            ),
                          )),
                      CustomBorderedButton(
                          selected: context.watch<ImageSelect>().selected,
                          onpressed: () {
                            context
                                .read<ImageSelect>()
                                .changeSelected(values[2]);
                          },
                          name: values[2],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/rice.png",
                              // height: 100,
                              // width: 100,
                            ),
                          )),
                      CustomBorderedButton(
                          selected: context.watch<ImageSelect>().selected,
                          onpressed: () {
                            context
                                .read<ImageSelect>()
                                .changeSelected(values[3]);
                          },
                          name: values[3],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/tea.png",
                              // height: 100,
                              // width: 100,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: FancyButton(
              width: MediaQuery.of(context).size.width,
              center: true,
              child: Text(
                "Check",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  // fontFamily: 'Gameplay',
                ),
              ),
              size: 35,
              color: context.watch<ImageSelect>().selected == null
                  ? Colors.grey
                  : Color.fromARGB(255, 70, 222, 75),
              onPressed: context.watch<ImageSelect>().selected == null
                  ? null
                  : () {
                      // Navigator.push(
                      //     context,
                      //     CupertinoPageRoute(
                      //       builder: (context) =>
                      //           const WhatToLearnScreen(),
                      //     ));

                      // showAnswer(
                      //   context,
                      // );

                      bool correct = context
                              .read<ImageSelect>()
                              .selected!
                              .trim()
                              .toLowerCase() ==
                          answer.trim().toLowerCase();
                      showModalBottomSheet<void>(
                        context: context,
                        isDismissible: false,
                        backgroundColor: Color(0xFF263238),
                        builder: (BuildContext context) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // mainAxisAlignment:
                              //     MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: correct
                                          ? Icon(
                                              Icons.check_circle,
                                              color: Colors.green,
                                              size: 30,
                                            )
                                          : Icon(
                                              Icons.cancel,
                                              color: Colors.red,
                                              size: 30,
                                            ),
                                    ),
                                    Text(
                                      correct ? 'Great Job' : "Incorrect",
                                      style: TextStyle(
                                          color: correct
                                              ? Colors.green
                                              : Colors.red,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                    "Correct Answer:\n $answer",
                                    // textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color:
                                            correct ? Colors.green : Colors.red,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 22,
                                      left: 8,
                                      right: 8,
                                      top: 8,
                                    ),
                                    child: FancyButton(
                                      width: MediaQuery.of(context).size.width,
                                      center: true,
                                      child: Text(
                                        correct ? "Continue" : "Got it",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
                                          // fontFamily: 'Gameplay',
                                        ),
                                      ),
                                      size: 35,
                                      color: correct
                                          ? Color.fromARGB(255, 70, 222, 75)
                                          : Colors.red,
                                      onPressed: () {
                                        if (correct) {
                                        } else {
                                          Navigator.pop(context);
                                        }
                                        // Navigator.push(
                                        //     context,
                                        //     CupertinoPageRoute(
                                        //       builder: (context) =>
                                        //           const WhatToLearnScreen(),
                                        //     ));
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
            ),
          ),
        ),
      ],
    );
  }
}
