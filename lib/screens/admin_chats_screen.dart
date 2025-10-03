import 'package:flutter/material.dart';

class AdminChatsScreen extends StatelessWidget {
  const AdminChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> users = ['Worker1', 'Contractor1', 'Worker2'];

    return Scaffold(
      appBar: AppBar(title: const Text('Manage Chats')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(users[index]),
              subtitle: const Text('View chat history'),
              trailing: IconButton(
                icon: const Icon(Icons.visibility),
                onPressed: () {
                  // TODO: view chat messages
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
