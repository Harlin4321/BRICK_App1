
import 'package:flutter/material.dart';
import 'job_post_screen.dart';
import 'chat_screen.dart';

class ContractorDashboard extends StatelessWidget {
  const ContractorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contractor Dashboard')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: const Text('Post a Job'),
            leading: const Icon(Icons.post_add),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const JobPostScreen()));
            },
          ),
          ListTile(
            title: const Text('Chat with Workers'),
            leading: const Icon(Icons.chat),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const ChatScreen()));
            },
          ),
          ListTile(
            title: const Text('Verify Workers'),
            leading: const Icon(Icons.verified),
            onTap: () {
              // TODO: implement verification logic
            },
          ),
        ],
      ),
    );
  }
}
