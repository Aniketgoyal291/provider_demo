import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
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
            Container(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: numbersProviderModel.numbers.length,
                itemBuilder: (context, index) {
                  return Text(
                    '${numbersProviderModel.numbers[index]} ',
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
