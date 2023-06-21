import 'package:flutter/material.dart';
import 'package:my_final_app/Screens/result_screen.dart';
import 'package:my_final_app/model/question_model.dart';
import 'package:my_final_app/data/question_list.dart';
import 'main.dart';
import 'dart:math';


class HomePage extends StatefulWidget {
  final String btnText;
  HomePage({required this.btnText});

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

  final List<QuestionModel> myIslamicQuestions = islamicQuestions;
  final List<QuestionModel> myGeographyQuestions = geographyQuestions;
  final List<QuestionModel> myDariQuestions = dariQuestions;
  final List<QuestionModel> myHistoryQuestions = historyQuestions;
  final List<QuestionModel> myBiologyQuestions = biologyQuestions;

  late String x;

  List<QuestionModel>? currentSubject;

  @override
  void initState() {
    super.initState();
    x = widget.btnText;
  }

  List<QuestionModel>? ChosenPart() {
    if (x == 'Islamic') {
      currentSubject = myIslamicQuestions;
    } else if (x == 'Geography') {
      currentSubject = myGeographyQuestions;
    } else if (x == 'Dari') {
      currentSubject = myDariQuestions;
    } else if (x == 'History') {
      currentSubject = myHistoryQuestions;
    } else {
      currentSubject = myBiologyQuestions;
    }

    return currentSubject;
  }

  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        title: Center(child: Text("Question Page")),
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
            itemCount: ChosenPart()?.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1} / ${ChosenPart()?.length}",
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
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
                      
                    ChosenPart()?[index].question ?? '',
                    textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  for (int i = 0; i < ChosenPart()![index].answer!.length; i++)
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 18),
                      padding: EdgeInsets.all(12),
                      child: MaterialButton(
                        shape: StadiumBorder(),
                        color: isPrssed
                            ? ChosenPart()![index]
                                    .answer!
                                    .entries
                                    .toList()[i]
                                    .value
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
                                if (ChosenPart()![index]
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
                          ChosenPart()![index].answer!.keys.toList()[i],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: isPrssed
                            ? index + 1 == ChosenPart()!.length
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
                          index + 1 == ChosenPart()!.length
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
