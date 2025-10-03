import 'package:flutter/material.dart';
import 'admin_jobs_screen.dart';
import 'admin_chats_screen.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Dashboard')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: const Text('Manage Jobs & Bids'),
            leading: const Icon(Icons.work),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AdminJobsScreen()));
            },
          ),
          ListTile(
            title: const Text('Manage Chats'),
            leading: const Icon(Icons.chat),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AdminChatsScreen()));
            },
          ),
          ListTile(
            title: const Text('Analytics & Insights'),
            leading: const Icon(Icons.analytics),
            onTap: () {
              // TODO: implement analytics screen
            },
          ),
          ListTile(
            title: const Text('Manage Payments / Escrow'),
            leading: const Icon(Icons.payment),
            onTap: () {
              // TODO: implement payment dashboard
            },
          ),
        ],
      ),
    );
  }
}

