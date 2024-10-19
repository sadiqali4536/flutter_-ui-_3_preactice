import 'package:flutter/material.dart';

class UserManagement extends StatefulWidget {
  const UserManagement({super.key});

  @override
  State<UserManagement> createState() => _UserManagementState();
}

class _UserManagementState extends State<UserManagement> {
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, 
      builder: (BuildContext context) {
        return AlertDialog(
          title:  Text('create your work'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(hintText:"enter" ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text("create"),
              onPressed: () {
                // Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 44, 173),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 82, 240),
        title: Row(
          children: [
            CircleAvatar(
              child: Icon(Icons.check),
              backgroundColor: Colors.white,
            ),
            SizedBox(width: 20),
            Text(
              "User management",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: Text(
              "data",
              style: TextStyle(color: Colors.white),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Color.fromARGB(255, 5, 36, 238),
            height: 1,
            thickness: 1,
          );
        },
        itemCount: 5,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showMyDialog();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
        backgroundColor: Color.fromARGB(255, 5, 36, 238),
      ),
    );
  }
}
