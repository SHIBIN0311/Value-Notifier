import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueNotifier<int> notifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Value Notifier'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              builder: (context, data, _) {
                return Text(
                  data.toString(),
                  style: const TextStyle(fontSize: 24),
                );
              },
              valueListenable: notifier,
            ),
            const SizedBox(
              height: 8.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(100, 50),
                ),
                onPressed: () {
                  notifier.value++;
                },
                child: const Icon(Icons.plus_one)),
          ],
        ),
      ),
    );
  }
}
