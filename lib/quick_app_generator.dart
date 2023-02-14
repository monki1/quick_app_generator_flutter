
import 'package:flutter/material.dart';


ThemeData defaultTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 30,
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 40,
      ),
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 40,
      ),
      titleSmall: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 30,
      ),
    ),
  );

Widget quickAppGenerator({required Widget screen, ThemeData? theme, Function(BuildContext)? buildContextReceiver}){
  return QuickApp(page: QuickPage(body: screen), theme_: theme, buildContextReceiver: buildContextReceiver);
}


class QuickApp extends StatelessWidget {
  Function(BuildContext)? _buildContextReceiver;
  final StatelessWidget page;
  ThemeData theme = defaultTheme;
  
  QuickApp({required this.page ,super.key, ThemeData? theme_, 
    /// This is a function that will be called with the build context of the app.
    Function(BuildContext)? buildContextReceiver}){
    if(theme_ != null){
      theme = theme_;
    }
    if(buildContextReceiver != null){
      _buildContextReceiver = buildContextReceiver;
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if(_buildContextReceiver != null){
      _buildContextReceiver!(context);
    }
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: page,
    );
  }
}

class QuickPage extends StatelessWidget{
  final Widget body;
  const QuickPage({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: body,
      )
    );
  }

}
