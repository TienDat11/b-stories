import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewStoryScreen extends StatefulWidget {
  const NewStoryScreen({super.key});

  @override
  State<NewStoryScreen> createState() => _NewStoryScreenState();
}

class _NewStoryScreenState extends State<NewStoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Column(children: [Text('New Story')]));
  }
}
