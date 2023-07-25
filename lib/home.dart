import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/list_provider.dart';
import 'second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListprovider>(
      builder: (context, numbersProviderModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numbersProviderModel.add();
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(),
        body: Column(
          children: [
            Text(
              numbersProviderModel.numbers.last.toString(),
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: numbersProviderModel.numbers.length,
                itemBuilder: (context, index) {
                  return Text(
                    numbersProviderModel.numbers[index].toString(),
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  );
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Second()));
              },
              child: const Text('SecondScreen'),
            ),
          ],
        ),
      ),
    );
  }
}
