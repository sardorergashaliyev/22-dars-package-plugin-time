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
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now().subtract(
                  const Duration(days: 365 * 10),
                ),
                lastDate: DateTime.now().add(
                  const Duration(days: 365 * 10),
                ),
              ).then((value) {
                selectedTime =
                    "${value?.year ?? 0}.${value?.month ?? 0}.${value?.day ?? 0}";
                    setState(() {
                      
                    });
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
