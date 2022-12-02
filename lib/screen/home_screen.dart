import 'package:flutter/material.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size; 
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey, 
        child: const Icon(Icons.cast), 
        onPressed: => print('Cast'); 
      ), 
      appBar: PreferredSize(
        prefferedSize: Size(screenSize.width, 50.0), 
        child: CustomAppBar()
      )
    );
  }
} 