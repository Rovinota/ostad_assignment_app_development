import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Editor App',
      home: TextEditorScreen(),
    );
  }
}

class TextItem {
  String title;
  String description;

  TextItem({required this.title, required this.description});
}

class TextEditorScreen extends StatefulWidget {
  @override
  _TextEditorScreenState createState() => _TextEditorScreenState();
}

class _TextEditorScreenState extends State<TextEditorScreen> {
  List<TextItem> items = [];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Text Editor App'),
        actions: [
          Icon(Icons.search, color: Colors.black, size: 35,),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: 'Add Title',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    hintText: 'Add Description',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                  ),
                  onPressed: () {
                    _addItem();
                  },
                  child: Text('Add'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  trailing: Icon(Icons.arrow_forward, size: 30, ),
                  leading: Icon(Icons.circle, color: Colors.redAccent, size: 55,),
                  title: Text(items[index].title, style: TextStyle(
                    fontSize: 20,
                  ),),
                  subtitle: Text(items[index].description),
                  onLongPress: () {
                    _showOptionsDialog(index);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _addItem() {
    String title = titleController.text;
    String description = descriptionController.text;

    if (title.isNotEmpty && description.isNotEmpty) {
      setState(() {
        items.add(TextItem(title: title, description: description));
        titleController.clear();
        descriptionController.clear();
      });
    }
  }

  void _showOptionsDialog(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Options'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _editItem(index);
              },
              child: Text('Edit'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _deleteItem(index);
              },
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _editItem(int index) {
    titleController.text = items[index].title;
    descriptionController.text = items[index].description;

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Edit Item',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  hintText: 'Enter Title',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  hintText: 'Enter Description',
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  _updateItem(index);
                  Navigator.of(context).pop();
                },
                child: Text('Save'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _updateItem(int index) {
    String title = titleController.text;
    String description = descriptionController.text;

    if (title.isNotEmpty && description.isNotEmpty) {
      setState(() {
        items[index] = TextItem(title: title, description: description);
        titleController.clear();
        descriptionController.clear();
      });
    }
  }

  void _deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }
}
