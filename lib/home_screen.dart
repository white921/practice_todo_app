import 'package:flutter/material.dart';
import 'add_task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() =>  HomescreenState();
}

class  HomescreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ホーム画面"),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
          backgroundColor: Colors.black,
          bottom: const TabBar(
            tabs: [
              Tab(text: "未完了のタスク"),
              Tab(text: "完了済みタスク"),
            ],
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            ),
        ),
        body: TabBarView(
          children: [

          ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => AddTask()));
          },
          child: Icon(Icons.add)
          ),
      ),
    );
  }
}