import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }
}

final controller = Get.put(HomePageController());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final count = controller.count.value;
      return Scaffold(
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: const TextStyle(fontSize: 50),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: controller.decrement, 
                  child: const Text('Decrease')
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: controller.increment, 
                  child: const Text('Increase')
                )
              ],
            )
          ],
        )),
      );
    });
  }
}
