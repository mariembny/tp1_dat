import 'package:flutter/material.dart';

import 'domain/data/loaddata.dart';
import 'domain/affirmation.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AffirmationList(),
    ),
  );
}

class AffirmationList extends StatelessWidget {
  final List<Affirmation> affirmations = loaddata();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Affirmations")),
      body: ListView.builder(
        itemCount: affirmations.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(affirmations[index].image),
            title: Text(affirmations[index].desc),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
        },
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("My Menu")),
            ListTile(title: Text("item")),
            ListTile(title: Text("item2")),
          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
     currentIndex: 0,
     items: const [
       BottomNavigationBarItem(
         label: "Home",
         icon: Icon(Icons.home),
       ),
       BottomNavigationBarItem(
         label: "Search",
         icon: Icon(Icons.search),
       ),
       BottomNavigationBarItem(
         label: "Profile",
         icon: Icon(Icons.account_circle),
       ),
     ],
     onTap: (int indexOfItem) {}),
    
    );
  }
}
