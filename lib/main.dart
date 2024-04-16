import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp((const App()));
}

class App extends StatelessWidget {
  const App({super.key});

  void onPressPlay() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "POMO",
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 3,
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(color: Color(0xFFE7626C)),
                child: const Text(
                  "12:00",
                  style: TextStyle(
                    fontSize: 110,
                    color: Color(0xFFF4F2DF),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFE7626C),
                ),
                child: Center(
                  child: IconButton(
                      onPressed: onPressPlay,
                      icon: const Icon(
                        Icons.play_circle_outlined,
                        size: 140,
                        color: Color(0xFFF4F2DF),
                      )),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(color: Color(0xFFE7626C)),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: const Text(
                                "Round",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "2",
                                    style: TextStyle(
                                      fontSize: 40,
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: const Offset(5, 10),
                                    child: const Text(
                                      "/ 4",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
