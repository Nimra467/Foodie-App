import 'package:flutter/material.dart';
import 'package:foodpanda_frontend/controllers/track_orderController.dart';
import 'package:get/get.dart';

class TrackOrderScreen extends StatelessWidget {
  final TrackOrderController controller = Get.put(TrackOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E193B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(),
        ),
        title: Text('Track order', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => Text("Order ID : ${controller.orderId.value}",
                style: TextStyle(color: Colors.white, fontSize: 16))),
            const SizedBox(height: 10),
            Text("Today", style: TextStyle(color: Colors.grey[400])),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: controller.orderStages.length,
                itemBuilder: (context, index) {
                  final Map<String, String> stage = controller
                      .orderStages[index]; // Explicitly specifying the type
                  return OrderStageTile(
                    time: stage["time"]!,
                    status: stage["status"]!,
                    isCompleted: index < controller.orderStages.length - 1,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Text("Order Track",
                style: TextStyle(color: Colors.white, fontSize: 18)),
            const SizedBox(height: 20),
            Obx(() => Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          'assets/delivery_person.jpg'), // Add image in assets
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(controller.deliveryPersonName.value,
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Text(controller.deliveryTime.value,
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 14)),
                      ],
                    ),
                  ],
                )),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 7, 53, 132),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                onPressed: controller.callDeliveryPerson,
                child: Text("Call",
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderStageTile extends StatelessWidget {
  final String time;
  final String status;
  final bool isCompleted;

  const OrderStageTile({
    required this.time,
    required this.status,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Text(time, style: TextStyle(color: Colors.white)),
            Icon(
              Icons.circle,
              color: isCompleted ? Colors.white : Colors.grey,
              size: 10,
            ),
            Container(
              width: 2,
              height: 40,
              color: isCompleted ? Colors.white : Colors.grey,
            ),
          ],
        ),
        const SizedBox(width: 20),
        Text(status,
            style: TextStyle(color: isCompleted ? Colors.white : Colors.grey)),
      ],
    );
  }
}
