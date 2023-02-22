# quick_app_generator
### installation
```commandline
  flutter pub add quick_app_generator
  flutter pub get
```
### usage
```dart
main(){
  runApp(
      QuickApp(QuickPage(YOUR_WIDGET))
  );
}
```
#### or use quickAppGenerator
```dart
Widget quickAppGenerator(
    {required Widget screen,
    ThemeData? theme,
    Function(BuildContext)? buildContextReceiver}) {
  return QuickApp(
      page: QuickPage(body: screen),
      theme_: theme,
      buildContextReceiver: buildContextReceiver);}
```

### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
