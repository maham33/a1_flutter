import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Screens/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(),
      title: 'Flutter Demo',
    );
  }
}


class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
            ),

            Text(
              "Welcome to",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,

              ),
              textAlign: TextAlign.center,
            ),

            Text(
                "Plan IT",
                style: TextStyle(
                  fontSize: 80,
                  color: Colors.black,
                  fontFamily:  'Roboto',
                  fontWeight: FontWeight.bold,
                ),
                  textAlign: TextAlign.center,
              ),
            SizedBox(
              height: 400,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your Personal task management\nand planning solution",
                  style: TextStyle(
                    fontSize:20,
                    color: Colors.black,
                    fontFamily:  'Roboto',

                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: (){
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) {return ListPage();} ));
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListPage()));
                    },
                    child: Text("Let's get started",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Colors.white)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black87),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 75,vertical: 20)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)))
                  )

                  ),
              ],
            ),
            SizedBox(
              height: 130,
            ),


            SizedBox(
              height: 130,
            ),


          ],
        ),
      ),
    );
  }
}

