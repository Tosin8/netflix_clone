import 'package:flutter/material.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey, 
        child: const Icon(Icons.cast), 
        onPressed: => print('Cast'); 
      )
    );
  }
} 