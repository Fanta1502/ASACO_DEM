import 'package:animations/animations.dart';
import 'package:asaco_dem/main.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

class accueil extends StatefulWidget {
  const accueil({Key? key}) : super(key: key);

  @override
  _accueilState createState() => _accueilState();
}

class _accueilState extends State<accueil> {
  bool darkmode = false;
  dynamic savedthemeMode;
  @override
  void initState()
  {
    super.initState();
    getCurrentTheme();
  }
  Future getCurrentTheme() async
  {
    savedthemeMode=await AdaptiveTheme.getThemeMode();
    if(savedthemeMode.toString()=='AdaptiveThemeMode.dark')
    {darkmode=true;}
    else
    { darkmode=false;}
  }
  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
        duration: const Duration(seconds: 1),
       transitionBuilder: (child,animation,secondaryAnimation)=>
        FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
          child: child,),
       child: Scaffold(
        body:Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:
              [
                SizedBox(height: 50,),
                Container(
                  margin: EdgeInsets.only(left: 160),
                  child:
                  SwitchListTile(
                    title: Text("Dark mode"),
                    value: darkmode,
                    activeColor: Colors.blue[700],
                    onChanged: (bool value){
                      print(value);
                      if(value==true)
                      {
                        AdaptiveTheme.of(context).setDark();
                      }
                      else
                      {
                        AdaptiveTheme.of(context).setLight();
                      }
                      setState(() {
                        darkmode=value;
                      });
                    },),
                ),
                SizedBox(height: 20,),
                Container(
                  child:CircleAvatar(
                    backgroundColor: Colors.blue[700],
                    radius: 140,
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("ASACO -"  ,
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[700]
                      ),),
                    SizedBox(width: 10,),
                    Text("DEM"  ,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                ),
                SizedBox(height: 5,),
                Text("Application",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 30.0,),
                Container(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: (){Navigator.pushNamed(context, '/presentation');},
                    child: Text('Click here', style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                  ),
                ),
              ],
            ),
          ),
        )
       )
    );
  }
}

