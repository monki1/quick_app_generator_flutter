
import 'package:flutter/material.dart';


ThemeData defaultTheme = ThemeData.dark();

StatelessWidget quickAppGenerator(Widget cliWidget,
    { ThemeData? theme}) {
  return QuickApp(cliWidget: cliWidget, theme: theme??defaultTheme);
}

class QuickApp extends StatelessWidget {
  final Widget cliWidget;
  final ThemeData theme;

  const QuickApp({Key? key, required this.cliWidget, required this.theme}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: QuickPage(cliWidget: cliWidget
      ),
    );
  }
}

class QuickPage extends StatelessWidget {
  final Widget cliWidget;
  // String title;
  const QuickPage({Key? key, required this.cliWidget
    // , required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      // ),
      body: SafeArea(child: cliWidget),
    );
  }
}



