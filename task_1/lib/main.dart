import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationTask(),
    );
  }
}

class NavigationTask extends StatefulWidget {
  const NavigationTask({Key? key}) : super(key: key);

  @override
  State<NavigationTask> createState() => _NavigationTaskState();
}

class _NavigationTaskState extends State<NavigationTask> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOption = <Widget>[
    Text(
      "Home Screen",
      style: optionStyle,
    ),
    Text(
      "Status Screen",
      style: optionStyle,
    ),
    Text(
      "Chat Screen",
      style: optionStyle,
    ),
    Text(
      "Setting Screen",
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              height: 200,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    "Task 1",
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 4,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () => {
                _onItemTapped(0),
                Navigator.pop(context),
              },
              title: Row(
                children: const [
                  Icon(
                    Icons.home,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () => {
                _onItemTapped(1),
                Navigator.pop(context),
              },
              title: Row(
                children: const [
                  Icon(
                    Icons.camera,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Status",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () => {
                _onItemTapped(2),
                Navigator.pop(context),
              },
              title: Row(
                children: const [
                  Icon(
                    Icons.chat_rounded,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Chat",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () => {
                _onItemTapped(3),
                Navigator.pop(context),
              },
              title: Row(
                children: const [
                  Icon(
                    Icons.settings,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: "Status",
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: "Chat",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
