# Checklist Rating
A Flutter package that provides a customizable checklist rating widget.

## Installation
Add checklist_rating to your pubspec.yaml dependencies:

```yaml
dev_dependencies:
  checklist_rating: ^0.0.3
```

Then run:
```sh
flutter pub get
```

## Usage
To use the ChecklistSetRating widget, you first need to import the package:
```dart
import 'package:checklist_rating/checklist_rating.dart';
```

Here's an example of how you can integrate ChecklistSetRating into your Flutter app:
```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int rating = 0;             // State for storing rating value
  bool isChecked = false;     // State for storing checkbox state

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checklist Rating Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChecklistSetRating.setRatingCheckList(
                  titleChekbox: "Sample Checklist",
                  onCheckboxChanged: (value) {
                    // Handle the change in checkbox state here
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                  setRating: rating,      // Pass the current rating state
                  isChecked: isChecked,  // Pass the current checkbox state
                  onRatingChecked: (ratingValue) {
                    // Handle the change in rating here
                    setState(() {
                      this.rating = ratingValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

## Example how to use checklist_rating
To use the ChecklistSetRating widget, you first need to import the package:

https://github.com/nunutech40/checklist_rating/assets/49187517/3ae6730f-13db-4f70-bc9c-70b9abecbb3d


