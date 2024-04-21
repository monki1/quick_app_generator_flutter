# quick_app_generator
### installation
```commandline
  flutter pub add quick_app_generator
  flutter pub get
```
```yaml
dependencies:
  quick_app_generator_flutter:
    git:
      url: https://github.com/monki1/quick_app_generator_flutter.git

```
### usage
```dart
import 'package:commandline_interface/commandline_interface.dart';
import 'package:flutter/material.dart';

import 'package:command_line_interface/command_line_interface.dart';
import 'package:quick_app_generator/quick_app_generator.dart';

CLIController cc = CLIController(
  interpreter: (String input) {
    return input+input;
  },
);



main(){
  runApp(
    quickAppGenerator(
      screen:
        Flex(
          direction: Axis.vertical,
          children: [
            cc.screen.widget,
            cc.input.widget,
          ],
          theme: ThemeData.dark(),
          BuildContextReciever: (BuildContext context){
            print(context);
          },
        ),
    )
  );
}

```

### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
