import 'package:flutter/material.dart';

/*The purpose of this syntax is to import the flutter material design Library
widgets and tools for building a material design UI(google design system)

import - Is a dart keyword to include external libraries

package:flutter/material.dart - Refers to the material design package include w/fullter,
containing widgets.

This is essential for building flutter apps w/ a standard UI
 */

void main(){
  runApp(const MyApp());
}

/*
The entry point of the flutter app

void main - main faction, starting point of any dart program

runApp() - Is a flutter function that initialize the app and attached the root widget(MyApp) to the screen

const MyApp() - Creates an instance of the My App class, marked as constant
 */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override // Indicate this method override the "build" method from StatelessWidget
Widget build(BuildContext context) {
    return MaterialApp(

    title: 'Hello Flutter',
    theme: ThemeData(
        primarySwatch: Colors.blue,
),
    home: const MyHomePage(),
    );

}
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(

    ),

      body: Center(
          child : Column(
              mainAxisAlignment : MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://static.wikia.nocookie.net/horrormovies/images/0/0a/The_Substance.jpg/revision/latest?cb=20241017191024',
                  width: 500,
                  height: 500,
                ),
                const SizedBox(height: 20),
                const Text (
                  'The Substance',
                  style: TextStyle(fontSize: 30),
                ),

                const Text(
                  'Fading actress Elisabeth Sparkle becomes distressed when her chauvinistic boss fires her from her aerobics show. She soon injects herself with a mysterious serum that promises a younger, better version of herself, but things go horribly wrong.'
                ),
              ],
          ),
      ),
    );

  }
}


/*
Define as a root widget or main container

class MyApp - It declares a custom class that extends StatelessWidget

StatelessWidget - It is flutter based class for widgets that don't change state(static UI)

const MyApp({super.key}) - constructor. w/ super.key passing an optional "key"

parameter to the parent StatelessWidget

Keys are used to identify the widgets uniquely

const - ensure that the constructor create a immutable instance.

---------------------------------

Widget build (BuildContext context) - This syntax provides contextual information about widgets
position in the widget tree

MaterialApp - Flutte widget that sets up the core structure,
it include navigation, theme, home screen.

title: 'Hello Flutter' - Sets  the app title, visible on the device task switcher

theme: ThemeData ( primarySwatch: Colors.blue) - Defines the apps visual theme
w/ color blue as the primary color.

home: const MyHomePage() - Sets the home screen to an instance of the homepage widget.


 */


