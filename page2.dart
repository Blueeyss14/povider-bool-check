import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test_bool_int/check.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final checkProvider = Provider.of<CheckProvider>(context);
    bool noData = checkProvider.toggleCheck.every((element) => !element);

    return Scaffold(
      body: noData
          ? const Center(
              child: Text("No Data"),
            )
          : Column(
              children: [
                for (int i = 0; i < checkProvider.toggleCheck.length; i++)
                  if (checkProvider.toggleCheck[i]) Text("${i + 1} Actived")
              ],
            ),
    );
  }
}
