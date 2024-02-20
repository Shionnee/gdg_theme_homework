import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdg_theme_homework/components/custom_button.dart';
import 'package:gdg_theme_homework/global.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> with Counter {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Theme.of(context).colorScheme.background,
                const Color.fromARGB(255, 150, 133, 248),
              ])),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Counter App",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontFamily: GoogleFonts.aBeeZee().fontFamily,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    'Use below buttons to start counting!',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontFamily: GoogleFonts.aBeeZee().fontFamily,
                        fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  '$counter',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontFamily: GoogleFonts.aBeeZee().fontFamily,
                      fontSize: 250),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0, horizontal: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomButton(
                          onTap: incrementCounter,
                          child: const Icon(
                            CupertinoIcons.plus,
                          ),
                        ),
                        CustomButton(
                          onTap: resetCounter,
                          child: Text(
                            "Reset Counter",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontFamily: GoogleFonts.aBeeZee().fontFamily,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        CustomButton(
                          onTap: decrementCounter,
                          child: const Icon(
                            CupertinoIcons.minus,
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    ) // This trailing comma makes auto-formatting nicer for build methods.
        ;
  }
}
