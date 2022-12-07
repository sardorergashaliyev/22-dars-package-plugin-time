import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String selectedTime = '';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Google font', style: TextStyle(fontFamily: 'ZenDots')),
          ),
          ElevatedButton(
            onPressed: () {
              showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              ).then((value) {
                selectedTime =
                    "${value?.hour ?? TimeOfDay.now().hour} : ${value?.minute ?? TimeOfDay.now().minute}";
                setState(() {});
              });
            },
            child: Text(
              "Selected time : $selectedTime",
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
