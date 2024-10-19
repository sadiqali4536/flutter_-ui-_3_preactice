import 'package:counter_app/17-10-24/service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class UserScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(title: const Text('User Management'),backgroundColor: Colors.blue,),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: userProvider.users.length,
              itemBuilder: (context, index) {
                final user = userProvider.users[index];
                return ListTile(
                  title: Text(user.name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          _nameController.text = user.name;
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Update Task'),
                              content: TextField(
                                controller: _nameController,
                                decoration:
                                    const InputDecoration(labelText: 'Task'),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    userProvider.updateUser(
                                      user.id,
                                      _nameController.text.trim(),
                                      DateTime.now(), 
                                    );
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Update'),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          userProvider.deleteUser(user.id);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.blue,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Add Task'),
              content: TextField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Task'),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    userProvider.addUser(User(
                      id: DateTime.now().toString(),
                      name: _nameController.text.trim(),
                      date: DateTime.now(), 
                    ));
                    Navigator.of(context).pop();
                    _nameController.clear();
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

