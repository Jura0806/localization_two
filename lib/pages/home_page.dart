import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Expanded(child: Center(
              child: Text('flutter', style: TextStyle(fontSize: 20),).tr(),
            )),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)
                    ),
                    onPressed: (){
                      context.setLocale(Locale('en', 'US'));
                    },
                    child: Text("English", style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: OutlinedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.redAccent)
                    ),
                    onPressed: (){
                      context.setLocale(Locale('ko', 'KO'));
                    },
                    child: Text("Korean", style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: OutlinedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue)
                    ),
                    onPressed: (){
                      context.setLocale(Locale('ja', 'JA'));
                    },
                    child: Text("Japan", style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
