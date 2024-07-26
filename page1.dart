import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test_bool_int/check.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    final checkToggleProvider = Provider.of<CheckProvider>(context);

    return Scaffold(
        body: ListView.builder(
      itemCount: checkToggleProvider.toggleCheck.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                checkToggleProvider.toggleCheckFn(index);
              },
              child: !checkToggleProvider.toggleCheck[index]
                  ? const Icon(Icons.menu)
                  : const Icon(Icons.close),
            ),
          ],
        );
      },
    ));
  }
}
