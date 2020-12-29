import 'package:flutter/material.dart';

class TampilanHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("kita kita teknik"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black54,
        actions: [
          IconButton(
              icon: const Icon(
                Icons.build,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: const Icon(
                Icons.eco,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: const Icon(
                Icons.add_alert,
                color: Colors.white,
              ),
              onPressed: null),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.black,
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.black,
            ),
            SizedBox(
              height: 500,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
