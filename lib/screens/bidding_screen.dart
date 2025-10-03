import 'package:flutter/material.dart';

class BiddingScreen extends StatelessWidget {
  const BiddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy list of jobs for bidding
    final List<String> jobs = ['Tile Work', 'Painting', 'RCC Work'];

    return Scaffold(
      appBar: AppBar(title: const Text('Bidding')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(jobs[index]),
              subtitle: const Text('Place your bid'),
              trailing: ElevatedButton(
                onPressed: () {
                  // TODO: implement bidding logic
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Bid placed on ${jobs[index]}')));
                },
                child: const Text('Bid'),
              ),
            ),
          );
        },
      ),
    );
  }
}

