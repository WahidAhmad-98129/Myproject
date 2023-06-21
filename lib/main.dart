import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        
       appBar: AppBar(
        title: Center(child: Text("Kankor Exame")),
        backgroundColor: Color.fromARGB(255, 68, 159, 121),
      ),
      backgroundColor: Color(0xFF252c4a),
        body: Container(
         
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  rowWiget(TxData: 'Welcome To Kankor Test', fontsi: 25),
                  rowWiget(TxData: 'Please Chose The Section', fontsi: 20),
                  rowWiget(TxData: ' you are Intrested in', fontsi: 18),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 3,
                    color: Color.fromARGB(255, 208, 202, 202),
                  ),
                  NewWidget(btnText: 'Islamic'),
                  NewWidget(btnText: 'Geography'),
                  NewWidget(btnText: 'Dari'),
                  NewWidget(btnText: 'History'),
                  NewWidget(btnText: 'Biology'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class rowWiget extends StatelessWidget {
  final String? TxData;
  final double? fontsi;
  rowWiget({this.TxData, this.fontsi});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            TxData ?? '',
            style: TextStyle(fontSize: fontsi, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class NewWidget extends StatelessWidget {
  final String? btnText;
  const NewWidget({this.btnText});

  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 11, 82, 153),
          
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        margin: EdgeInsets.fromLTRB(25, 20, 25, 0),
        padding: EdgeInsets.all(5),
        child: Center(
            child: TextButton(
          child: Text(
            btnText ?? '',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
                onPressed: () {
                  if (btnText != null) {

                    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(btnText!)));

Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(btnText: btnText!)));
 


                  }
                }
        ),
  ),
      ),
    );
  }
}


