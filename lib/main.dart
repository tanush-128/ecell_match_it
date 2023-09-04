import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:js' as js;
import 'package:js/js.dart';

void main() {
  runApp(MainApp());
}

void showAlert(String message) {
  js.context.callMethod('alert', [message]);
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(Typography.blackCupertino)),
      home: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0XFFFF30D4),
          Color(0xFFB7007D),
          // const Color.fromRGBO(1, 97, 122, 1).withOpacity(0.7),
          // const Color.fromRGBO(1, 97, 122, 1).withOpacity(0.8),
          // const Color.fromRGBO(1, 97, 122, 1).withOpacity(0.9),
          // const Color.fromRGBO(1, 97, 122, 1).withOpacity(1),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: RichText(
                        softWrap: true,
                        maxLines: 2,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "MATCH",
                            style: TextStyle(
                                fontSize: 64,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                          TextSpan(
                            text: ".COM",
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.black,
                                fontWeight: FontWeight.w800),
                          )
                        ])),
                    // child: Text(
                    //   "MATCH.COM",
                    //   style: TextStyle(
                    //       fontSize: 64,
                    //       color: Colors.yellow,
                    //       fontWeight: FontWeight.w800),
                    // ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Wrap(
                      spacing: 96, runSpacing: 32,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                const BoxShadow(
                                    color: Color(0XFF6E0228),
                                    offset: Offset(2, 2)),
                                BoxShadow(
                                    color: const Color(0XFF6E0228)
                                        .withOpacity(0.5),
                                    offset: const Offset(-1, -1)),
                              ]),
                          width: 320,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: TextField(
                              controller: controller1,
                              cursorColor: Colors.black,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                // fillColor: Color.fromRGBO(28, 53, 81, 1),
                                focusColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                const BoxShadow(
                                    color: Color(0XFF6E0228),
                                    offset: Offset(2, 2)),
                                BoxShadow(
                                    color: const Color(0XFF6E0228)
                                        .withOpacity(0.5),
                                    offset: const Offset(-1, -1)),
                              ]),
                          width: 320,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: TextField(
                              controller: controller2,
                              cursorColor: Colors.black,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                // fillColor: Color.fromRGBO(28, 53, 81, 1),
                                focusColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (controller1.text.toString().trim() != "" &&
                            controller2.text.toString().trim() != "") {
                          print(controller1.text);
                          if (controller1.text.toString().trim() ==
                              controller2.text.toString().trim()) {
                            showAlert("Great Job");
                          } else {
                            showAlert("Uh oh, try again.");
                          }
                        } else {
                          showAlert("add to another tab");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          foregroundColor: Colors.black,
                          backgroundColor:
                              const Color.fromRGBO(255, 227, 123, 1)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "MATCH IT",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
