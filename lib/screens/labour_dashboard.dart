import 'package:flutter/material.dart';
import 'job_post_screen.dart';
import 'bidding_screen.dart';
import 'chat_screen.dart';

class LabourDashboard extends StatelessWidget {
  const LabourDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Labour Dashboard')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: const Text('Job Alerts'),
            leading: const Icon(Icons.work),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const JobPostScreen()));
            },
          ),
          ListTile(
            title: const Text('Bidding'),
            leading: const Icon(Icons.how_to_vote),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const BiddingScreen()));
            },
          ),
          ListTile(
            title: const Text('Chat'),
            leading: const Icon(Icons.chat),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const ChatScreen()));
            },
          ),
        ],
      ),
    );
  }
}
