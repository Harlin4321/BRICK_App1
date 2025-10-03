import 'package:flutter/material.dart';

class AdminJobsScreen extends StatelessWidget {
  const AdminJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> jobs = ['Job 1', 'Job 2', 'Job 3'];

    return Scaffold(
      appBar: AppBar(title: const Text('Jobs & Bids')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(jobs[index]),
              subtitle: const Text('View bids and details'),
              trailing: ElevatedButton(
                onPressed: () {
                  // TODO: implement approve/reject job
                },
                child: const Text('Manage'),
              ),
            ),
          );
        },
      ),
    );
  }
}
  

