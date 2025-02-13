import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Connetivity Plus",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.list))
        ],
      ),
body: Center(

  child: StreamBuilder(stream: Connectivity().onConnectivityChanged, builder:(context, snapshot) {
    if(snapshot.hasError)
      {
        return Text(snapshot.error.toString(),);
      }
    if(snapshot.hasData)
      {
        List result=snapshot.data!;
        if(result.contains(ConnectivityResult.mobile) || result.contains(ConnectivityResult.wifi))
          {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(itemCount: goodThoughtList.length,itemBuilder: (context, index) =>Card(child: ListTile(
                  title: Text(goodThoughtList[index]),
                ),) ,),
              );
          }
        else if(result.contains(ConnectivityResult.none))
          {
            log("============================");
            return Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Text('  Check Your Device Connected With Internet ,\n                     Check Your Device',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                Container(
                  height: height*0.800,
                  width: width*0.800,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/image/animation.gif'),)
                  )
                ),

              ],
            );
            // return CircularProgressIndicator();
          }
      }
    return CircularProgressIndicator();

  },),
),
    );
  }
}
// Future<List<ConnectivityResult>>  getResult() async => await Connectivity().checkConnectivity();

List goodThoughtList = [
  "Don’t watch the clock; do what it does. Keep going. – Sam Levenson",
  "It always seems impossible until it’s done. – Nelson Mandela",
  "You miss 100% of the shots you don’t take. – Wayne Gretzky",
  "Opportunities don't happen. You create them.– Chris Grosser" ,
  "Dream big and dare to fail. – Norman Vaughan",
  "You know you're in love when you can't fall asleep because reality is finally better than your dreams. – Dr. Seuss",
  "Love is composed of a single soul inhabiting two bodies. – Aristotle",
  "To love and be loved is to feel the sun from both sides. – David Viscott",
  "The best thing to hold onto in life is each other. – Audrey Hepburn",
  "In all the world, there is no heart for me like yours. – Maya Angelou",
  "I am so clever that sometimes I don’t understand a single word of what I am saying. – Oscar Wilde",
  "I can resist everything except temptation. – Oscar Wilde",
  "The only mystery in life is why the kamikaze pilots wore helmets. – Al McGuire",
  "Common sense is like deodorant. The people who need it most never use it. – Anonymous",
  "I m not arguing, I’m just explaining why I’m right. – Unknown",
  "The best way to predict the future is to create it. – Abraham Lincoln",
  "Do what you can, with what you have, where you are. – Theodore Roosevelt",
  "Success is not final, failure is not fatal: It is the courage to continue that counts. – Winston Churchill",
  "Believe you can and you're halfway there. – Theodore Roosevelt",
  "Your time is limited, so don’t waste it living someone else’s life. – Steve Jobs",

];