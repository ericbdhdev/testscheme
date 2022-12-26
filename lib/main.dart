import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xff6200EE),
          secondary: const Color(0xffb74093),
          tertiary: Colors.green,
        ),
        // primaryColor: Colors.lightBlue[800],
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),

      darkTheme: ThemeData(
        // toggleableActiveColor: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
          secondary: Colors.blueAccent,
          brightness: Brightness.dark,
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
        /* dark theme settings */
      ),
      // themeMode: ThemeMode.dark,
      themeMode: ThemeMode.light,

      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tekst 1 You have pushed the button this many times:',
            ),
            const Text(
              'tekst1: no specs',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'tekst1A: head',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            Text(
              'tekst2: primary',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Text(
              'tekst3: onPrimary',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
            Text(
              'tekst4: primaryContainer',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
            ),
            Text(
              'tekst5: onPrimaryContainer',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
            ),
            Text(
              'tekst6: secondary',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            Text(
              'tekst7 : onSecondary',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
            ),
            Text(
              'tekst8: secondaryContainer',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                  ),
            ),
            Text(
              'tekst9: onSecondaryContainer',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
            ),
            Text(
              'tekst10: tertiary',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
            ),
            Text(
              'tekst11: shadow ',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Theme.of(context).colorScheme.shadow,
                  ),
            ),
            Text(
              'tekst12: background  ',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            Text('tekst13: headline4', style: TextStyle(color: Theme.of(context).primaryColor)),
            Text('tekst40: headline4', style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
