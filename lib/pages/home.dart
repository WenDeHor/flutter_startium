import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _userToDO;
  List todoList = [];

  @override
  void initState() {
    super.initState();
    todoList.addAll([
      'Work number 1',
      'Work number 2',
      'Work number 3',
      'Work number 4',
      'Work number 5',
      'Work number 6'
    ]);
  }

  void _menuOpen() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Menu'),
          ),
          body: Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                  },
                  child: Text('main page')),
              Padding(padding: EdgeInsets.only(left: 15)),
              ElevatedButton(onPressed: () {}, child: Text('Tasks')),
              Padding(padding: EdgeInsets.only(left: 15)),
              ElevatedButton(onPressed: () {}, child: Text('About')),
              Padding(padding: EdgeInsets.only(left: 15)),
              ElevatedButton(onPressed: () {}, child: Text('Home')),
            ],
          ));
    }));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('List tasks'),
        centerTitle: true,
        actions: [IconButton(onPressed: _menuOpen, icon: Icon(Icons.eight_k))],
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(todoList[index]),
              child: Card(
                child: ListTile(
                  title: Text(todoList[index]),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.backup_table,
                      color: Colors.blue[900],
                    ),
                    onPressed: () {
                      setState(() {
                        todoList.removeAt(index);
                      });
                    },
                  ),
                ),
              ),
              onDismissed: (direction) {
                setState(() {
                  todoList.removeAt(index);
                });
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext c) {
                return AlertDialog(
                  title: Text('Add element'),
                  content: TextField(
                    onChanged: (String value) {
                      _userToDO = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            todoList.add(_userToDO);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text('Add toDO'))
                  ],
                );
              });
        },
        child: Icon(
          Icons.add_box,
          color: Colors.white,
        ),
      ),
    );
  }
}
