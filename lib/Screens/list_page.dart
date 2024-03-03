import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List listOfItems = [ "Task 1", "Task 2","Task 3", "Task 4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Task Board", style: TextStyle(fontWeight: FontWeight.bold),),

          centerTitle: true,
        ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: listOfItems.length,
        itemBuilder: (context, index) {
          return Card(
            color: Color(0xfff5f8fb),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Text(
                    listOfItems[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Your Personal task management and planning solution for\nplanning your day, week & months",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "12:55 pm 25th May, 2023",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            listOfItems.add("Task ${listOfItems.length + 1}");
          });

        },
        child: const Icon(Icons.add),
      ),

    );
  }
}
