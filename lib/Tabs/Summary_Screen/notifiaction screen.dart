import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  static const String routName = 'Notification Screen';

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Notifications")),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Slidable(
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          setState(() {});
                        },
                        icon: Icons.replay,
                        backgroundColor: Colors.grey[300]!,
                      ),
                      SlidableAction(
                        onPressed: (context) {},
                        icon: Icons.delete,
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red[700]!,
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.08),
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/images/foucs Medication.png"),
                    ),
                    title: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mina Magdy",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "2h Ago",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    subtitle: const Text(
                      "Please someone who wants to be responsible for you and your health condition",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey[400],
                indent: size.width * .08,
                endIndent: size.width * .08,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
