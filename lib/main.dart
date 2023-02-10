
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:asaco_dem/Pages/about.dart';
import 'package:asaco_dem/Pages/contact.dart';
import 'package:asaco_dem/Pages/presentation.dart';
import 'package:asaco_dem/Pages/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}
class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const MyApp({super.key, this.savedThemeMode});
  @override
  Widget build(BuildContext context) {
      return AdaptiveTheme(
        light: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
        ),
        dark: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
          initial: savedThemeMode ?? AdaptiveThemeMode.light,
          builder: (theme, darkTheme) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Adaptive Theme Demo',
              theme: theme,
              darkTheme: darkTheme,
              routes: {
                "/": (context) => const accueil(),
                "/presentation": (context) => const Presentation(),
                "/about": (context) => const about(),
                "/contact": (context) => const contact(),
              }
        ),
      );
  }
}

class barDeTache extends StatefulWidget {
  const barDeTache({Key? key}) : super(key: key);

  @override
  _barDeTacheState createState() => _barDeTacheState();
}

class _barDeTacheState extends State<barDeTache> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Colors.blue[400],
      elevation: 0.0,
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.fromLTRB(20, 1, 20, 2),
              child: CircleAvatar(
                backgroundColor: Colors.blue[400],
              ),
              decoration: BoxDecoration(
                color: Colors.blue[700],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,size: 27,
                  color: Colors.white),
              title: const Text('Présentation',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.white
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/presentation');
              },
            ),
            ListTile(
              leading: Icon(Icons.accessibility,size: 27,
                  color: Colors.white),
              title: const Text('A propos',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.white
                ),),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: Icon(Icons.newspaper,size: 27,
                  color: Colors.white),
              title:  Text('Info-Bio',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.white
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone,size: 27,
                  color: Colors.white),
              title: const Text('Contact',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.white
                ),),
              onTap: () {

                Navigator.pushNamed(context, '/contact');
              },
            ),
          ],
        ),
      ),
    );
  }
}