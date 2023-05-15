import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/fic4_column_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/fic4_row_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic4_button_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic4_circle_avatar_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic4_container_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic4_icon_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic4_image_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic4_scaffold_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/fic4_text_widget.dart';

import 'tugas/basic_form/fic4_dialog_widget.dart';
import 'tugas/basic_form/fic4_from_widget.dart';
import 'tugas/basic_layout/fic4_aspectratio.dart';
import 'tugas/basic_layout/fic4_center_widget.dart';
import 'tugas/basic_layout/fic4_expanded_widget.dart';
import 'tugas/basic_layout/fic4_grid_view.dart';
import 'tugas/basic_layout/fic4_list_view_widget.dart';
import 'tugas/basic_layout/fic4_padding_widget.dart';
import 'tugas/basic_layout/fic4_size_box_widget.dart';
import 'tugas/basic_layout/fic4_stack_widget.dart';
import 'tugas/basic_layout/fic4_wrap_widget.dart';
import 'tugas/navigation/fic4_button_navbar.dart';
import 'tugas/navigation/fic4_drawer_widget.dart';
import 'tugas/navigation/fic4_navigation_push.dart';
import 'tugas/navigation/fic4_sliver_widget.dart';
import 'tugas/navigation/fic4_tabbar_widget.dart';
import 'tugas/stateful_simple/fic4_stateless_stateful_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Fic4SliverWidget(),
      // Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Jago Flutter'),
      //   ),
      //   body: const ChangeTimeWidget(),
      // ),
    );
  }
}

class ChangeTimeWidget extends StatefulWidget {
  const ChangeTimeWidget({super.key});

  @override
  State<ChangeTimeWidget> createState() => _ChangeTimeWidgetState();
}

class _ChangeTimeWidgetState extends State<ChangeTimeWidget> {
  DateTime time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Time: $time'),
        ElevatedButton(
          onPressed: () {
            time = DateTime.now();
            setState(() {});
          },
          child: const Text('Update Time'),
        ),
      ],
    );
  }
}

class ShowTextWidget extends StatelessWidget {
  final String text;
  const ShowTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
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
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
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
