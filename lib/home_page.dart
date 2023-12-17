import 'package:flutter/material.dart';
import 'button.dart';
import 'display.dart';
import 'calc_controllers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = CalcController();

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_listener);
  }

  @override
  void dispose() {
    controller.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Display(value: controller.display)
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                    color: Colors.grey.shade800,
                  ),
                Expanded(
                  flex: 5,
                  child: MyButton(
                    onButtonClick: controller.onButtonClick,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}