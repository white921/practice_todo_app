import 'package:flutter/material.dart';
import 'home_screen.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State <AddTask> createState() =>  AddState();
}

class  AddState extends State <AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("タスク追加"),
        titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          } ,
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 300,
    
              child: TextField(
                decoration: InputDecoration(
                  labelText: "タスク名",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("タスクを保存"))
              
            
          ],
        ),
      ),
    );
  }
}