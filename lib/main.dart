import 'package:flutter/material.dart';
import 'package:my_final_app/Screens/result_screen.dart';
import 'package:my_final_app/data/question_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mainColor = Color(0xFF252c4a);
  Color secondColor = Color(0xFF177eeb);
  PageController? _controller = PageController(initialPage: 0);

  bool isPrssed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xFF177eeb);
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        title: Center(child: Text("Kankor Exame")),
        backgroundColor: Color.fromARGB(255, 68, 159, 121),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: PageView.builder(
            controller: _controller!,
            onPageChanged: (page) {
              setState(() {
                isPrssed = false;
              });
            },
            itemCount: questions.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1} / ${questions.length}",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 5,
                    thickness: 3,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Questions text
                  Text(
                    questions[index].question!,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  for (int i = 0; i < questions[index].answer!.length; i++)
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 18),
                      padding: EdgeInsets.all(12),
                      child: MaterialButton(
                        shape: StadiumBorder(),
                        color: isPrssed
                            ? questions[index].answer!.entries.toList()[i].value
                                ? isTrue
                                : isWrong
                            : secondColor,
                        padding: EdgeInsets.all(18),
                        onPressed: isPrssed
                            ? () {}
                            : () {
                                setState(() {
                                  isPrssed = true;
                                });
                                if (questions[index]
                                    .answer!
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  score += 1;
                                } else {
                                  setState(() {
                                    btnColor = isWrong;
                                  });
                                }
                              },
                        //questions answer part
                        child: Text(
                          questions[index].answer!.keys.toList()[i],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: isPrssed
                            ? index + 1 == questions.length
                                ? () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ResultScreen(score)));
                                  }
                                : () {
                                    _controller!.nextPage(
                                        duration: Duration(microseconds: 500),
                                        curve: Curves.linear);
                                    setState(() {
                                      isPrssed = false;
                                    });
                                  }
                            : null,
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 47, 179, 14),
                          shape: StadiumBorder(
                            side: BorderSide(color: Colors.orange, width: 1),
                          ),
                        ),
                        child: Text(
                          index + 1 == questions.length
                              ? "See Result"
                              : "Next Question",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }),
      ),
    );
  }
}
