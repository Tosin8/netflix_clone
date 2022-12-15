import 'package:flutter/material.dart';

import 'Components/custom_appBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late  double _scrollOffset = 0.0;
  late ScrollController _scrollController;

  void iniState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override 
  void dispose() {
_scrollController.dispose()
super.dispose(); 
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          onPressed: () => print('Cast'),
          child: const Icon(Icons.cast),
        ),
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 50.0),
          child: CustomAppBar(scrollOffset: _scrollOffset),
        ),
        body: CustomScrollView(controller: _scrollController));
  }
}
