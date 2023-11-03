import 'package:fitnesstracker/source/utils/theme/widgets_themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (context) => WorkoutData(),
    // child:
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      // debugShowCheckedModeBanner: false,
      home: const AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Test"),
        leading: const Icon(Icons.ondemand_video),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_shopping_cart),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "seif is the big here",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "choaib is small",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              "amjed is a bitsh",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("elevated button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("outlined button"),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(
                image: AssetImage("assets/images/chou.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
